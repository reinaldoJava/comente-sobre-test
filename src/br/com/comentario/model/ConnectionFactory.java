package br.com.comentario.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;



public class ConnectionFactory {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("teste");

	public static EntityManager getConectionFactory() {
		return  emf.createEntityManager();
	}
}
