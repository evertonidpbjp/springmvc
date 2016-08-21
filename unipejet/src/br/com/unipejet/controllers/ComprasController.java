package br.com.unipejet.controllers;

import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.unipejet.daos.RegistroCompraDAO;
import br.com.unipejet.daos.UserDAO;
import br.com.unipejet.daos.VoosDAO;
import br.com.unipejet.models.Compras;
import br.com.unipejet.models.Registro;
import br.com.unipejet.models.ShoppingCart;
import br.com.unipejet.models.User;
import br.com.unipejet.models.Voos;

@Transactional
@Controller
public class ComprasController {

	@Autowired
	private VoosDAO voosDAO;

	Map<Compras, Integer> item;

	@Autowired
	private ShoppingCart shoppingCart;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private RegistroCompraDAO rcDAO;

	// M�todo que chama o formulario para definir o n�mero de passagens
	@RequestMapping("/compras/detalhes_compra")
	public ModelAndView detalhes_compra(Integer identificador) {
		ModelAndView modelAndView = new ModelAndView("compras/detalhes_compra");
		Voos voo = voosDAO.find(identificador);
		modelAndView.addObject("voo", voo);
		return modelAndView;
	}

	// M�todo que chama o formulario para definir os passageiros
	@RequestMapping("/compras/define_passageiros")
	public ModelAndView define_passageiros(Integer identificador, double total, Integer passagens,
			double total_milhas) {
		ModelAndView modelAndView = new ModelAndView("compras/define_passageiros");
		Voos voo = voosDAO.find(identificador);
		modelAndView.addObject("total", total);
		modelAndView.addObject("passagens", passagens);
		modelAndView.addObject("total_milhas", total_milhas);
		modelAndView.addObject("voo", voo);
		return modelAndView;
	}

	// M�todo que adiciona os itens ao carrinho
	@RequestMapping(value = "/compras/carrinho", method = RequestMethod.POST)
	public ModelAndView add(Compras item) {
		Calendar valor = Calendar.getInstance();
		Integer numero_compra = (int) valor.getTimeInMillis();
		item.setNumero_compra(numero_compra);
		shoppingCart.add(numero_compra, item);
		return new ModelAndView("redirect:/voos/pesquisa_voo");
	}

	// Chama carrinho exibindo o seu cont�udo
	@RequestMapping(value = "/compras/itens")
	public ModelAndView carrinho(Registro rc) {
		return new ModelAndView("compras/ver_carrinho");
	}

	// Remove Item do carrinho
	@RequestMapping("compras/remove_item")
	public String remove_item(Integer id) {
		Map<Integer, Compras> objeto = shoppingCart.getItems();
		objeto.remove(id);
		return "redirect:/compras/itens";
	}

	// Chamando p�gina de pagamento
	@RequestMapping("compras/finalizar_compra")
	public ModelAndView finalizar_compra(@Valid Registro registro, BindingResult bindingResult,
			RedirectAttributes red) {
		if (bindingResult.hasErrors()) {
			return carrinho(registro);

		}

		
		// Cria o objeto modelAndView
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		// Cria o mapa que representa os objetos do tipo compra
		Map<Integer, Compras> mapa = shoppingCart.getItems();  
		
		//Verifica se h� saldo suficiente no cartao de milhas para continuar a opera��o
		double total_pago_em_milhas = registro.getTotal_milhas();
		String responsavel = registro.getResponsavel();
		User user = userDAO.find(responsavel);
		double cartao_credito = user.getCartao_credito();
		if (cartao_credito < total_pago_em_milhas) {

			red.addFlashAttribute("msg", "Voce Nao tem saldo em milhas suficiente para finalizar a compra");
			return modelAndView;
			
		}
			
		
		// Varre o carrinho de compras subtraindo de cada voo o n�mero de assentos dispon�veis
	
		Set<Integer> chaves = mapa.keySet();
		for (Integer chave : chaves) {
			Compras compra = mapa.get(chave);
			Integer identificador = compra.getIdentificador();
			Integer numero_passagens = compra.getPassagens();
			Voos voo = voosDAO.find(identificador);
			Integer assentos_totais = voo.getAssentos();

			if (numero_passagens > assentos_totais) {

				red.addFlashAttribute("msg",
						"Erro de concorrencia, os assentos dispon�veis j� foram compradas por outra pessoa");
				mapa.clear();
				return modelAndView;
			}

			Integer assentos_restantes = assentos_totais - numero_passagens;
			voo.setAssentos(assentos_restantes);
			String concorrencia = voosDAO.altera(voo);

			if (concorrencia == "erro") {
				red.addFlashAttribute("msg", "Erro de Concorrencia, outro usu�rio j� comprou a sua passagem");
				return modelAndView;

			}

		}


		double cartao_credito_restante = cartao_credito - total_pago_em_milhas;
		user.setCartao_credito(cartao_credito_restante);
		userDAO.altera(user);
		rcDAO.save(registro);

		red.addFlashAttribute("msg", "Compra Realizada com Sucesso");
		mapa.clear();
		return modelAndView;

	}

}
