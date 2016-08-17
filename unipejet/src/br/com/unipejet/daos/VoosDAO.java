package br.com.unipejet.daos;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.unipejet.models.BookType;
import br.com.unipejet.models.Produto;
import br.com.unipejet.models.User;
import br.com.unipejet.models.Voos;



@Repository
public class VoosDAO {

	
	@PersistenceContext
	private EntityManager voo_manager;




	// M�todo respons�vel por gravar os dados, cadastrando novos voos
	
	public void save(Voos voo){
	voo_manager.persist(voo);

	}

	// M�todo para buscar a lista de usu�rios do banco

	public List<Voos> lista() {
	return voo_manager.createQuery("select v from Voos v").getResultList();
	}

	
	//M�todo para buscar um voo espec�fico
	public Voos find(Integer identificador) {
	return voo_manager.find(Voos.class, identificador);
	}


	// M�todo para editar voo
	public void altera(Voos voo) {
	voo_manager.merge(voo);
	}

	// M�todo que remove um voo
	public void remove(Voos voo) {
		voo_manager.remove(voo);
		
	}

	// M�todo para buscar voo com base na pesquisa por origem e destino
  
	public List<Voos> buscaVoo(String origem, String destino, String data) {
  /*
		try{
			TypedQuery<Voos> query = voo_manager
					.createQuery(
							"select v from Voos v  where v.origem = :origem and v. = :destino and v.data = :data",
							Voos.class);
			query.setParameter("origem", origem);
			query.setParameter("destino", destino);
			query.setParameter("data", data);
	         return query.();
		
		}catch (NoResultException nre){
			return null;
		}
	*/
		Query query = voo_manager.createQuery("select v from Voos v where v.origem = :origem and v.destino = :destino and v.data = :data", Voos.class);
		query.setParameter("origem", origem);
		query.setParameter("destino", destino);
		query.setParameter("data", data);
       try{
		return query.getResultList();
       }catch(NoResultException nre){
    	   return null;
       }
       
	}
		
		
		
	}
		
		


	





	


