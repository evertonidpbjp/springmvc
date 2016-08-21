package br.com.unipejet.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.unipejet.models.Registro;

@Repository
public class RegistroCompraDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	public void save(Registro rc){
		
		em.persist(rc);
		
	}
	
	
}
