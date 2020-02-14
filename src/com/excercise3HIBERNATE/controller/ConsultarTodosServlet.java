package com.excercise3HIBERNATE.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.excercise3HIBERNATE.model.Libro;

@WebServlet(description = "Jalar todos los registros", urlPatterns = { "/ConsultarTodosServlet" })
public class ConsultarTodosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//configurar HIBERNATE
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(com.excercise3HIBERNATE.model.Libro.class);
		cfg.configure("hibernate.config.xml");
		
		//crear Session Factory
		SessionFactory factory = cfg.buildSessionFactory();
		
		//crear Objeto Session
		Session session = factory.openSession();
		
		//iniciar transacción
		Transaction t = session.beginTransaction();
		
		//creamos lista de objetos 
		List<Libro> misLibros = session.createQuery("from Libro").getResultList();
		
		//creando objeto libro
		Libro elLibro;
		
		//iteramos through nuestros registros
		Iterator iterador = misLibros.iterator();
		
		while(iterador.hasNext()) {
			
			elLibro = (Libro)iterador.next();
			System.out.println("nombre: " + elLibro.getNombreLibro());
			response.getWriter().append("Nombre: " + elLibro.getNombreLibro() + ". ");
			
		}

		//commitear la transacción
		session.getTransaction().commit();
		
		//ahora cerramos la sesión
		session.close();
	}

}
