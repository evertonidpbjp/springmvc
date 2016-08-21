package br.com.unipejet.models;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;

public class Compras {

	
	private Integer identificador;
    private Integer numero_compra;
	private Integer restantes;
    
	
	
    public Integer getRestantes() {
		return restantes;
	}



	public void setRestantes(Integer restantes) {
		this.restantes = restantes;
	}

	//N�mero de passagens compradas
    private Integer passagens;
	
    //Total em reais (considera o pre�o do n�mero de passagens vezes o pre�o)
    private double total;
   
    //Total em milhas (considera o n�mero de passagens vezes a distancia.
	private double total_milhas;
	
	//Lista dos passageiros para essa compra espec�fica
	private List<Passageiros> passageiros = new ArrayList<Passageiros>();
    
    

	public double getTotal_milhas() {
		return total_milhas;
	}





	public void setTotal_milhas(double total_milhas) {
		this.total_milhas = total_milhas;
	}





	public Integer getNumero_compra() {
		return numero_compra;
	}

	
    
	

	public Integer getIdentificador() {
		return identificador;
	}

	public void setIdentificador(Integer identificador) {
		this.identificador = identificador;
	}

	public Integer getPassagens() {
		return passagens;
	}

	public void setPassagens(Integer passagens) {
		this.passagens = passagens;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public List<Passageiros> getPassageiros() {
		return passageiros;
	}

	public void setPassageiros(List<Passageiros> passageiros) {
		this.passageiros = passageiros;
	}

	public void setNumero_compra(Integer numero_compra) {
		this.numero_compra = numero_compra;
		
	}

	   

}
