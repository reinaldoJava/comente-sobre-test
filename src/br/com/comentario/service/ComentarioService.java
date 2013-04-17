package br.com.comentario.service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.comentario.model.Comentario;
import br.com.comentario.model.ConnectionFactory;

@Repository
public class ComentarioService {

	@Autowired
	private EntityManager em;

	public ComentarioService() {
		em = ConnectionFactory.getConectionFactory();
	}

	public void adiciona(Comentario comentario) {
		em.getTransaction().begin();
		em.persist(comentario);
		em.getTransaction().commit();

	}

	public List<Comentario> lista() {

		return em.createQuery("from Comentario").getResultList();

	}
}
