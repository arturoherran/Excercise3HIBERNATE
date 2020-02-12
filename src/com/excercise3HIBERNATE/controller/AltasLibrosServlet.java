package com.excercise3HIBERNATE.controller;

import java.io.IOException;
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

@WebServlet("/AltasLibrosServlet")
public class AltasLibrosServlet extends HttpServlet {
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
		
		//creamos objeto de mi tabla, en este caso Libro
		Libro miLibro = new Libro();
		
		//jalar datos de la forma, usamos el NAME para esta parte (el ID es para comunicación en el Front
		String nombreLibro = request.getParameter("nombreLibro");
		String nombreAutor = request.getParameter("nombreAutor");
		String generoLibro = request.getParameter("generoLibro");
		String ISBN = request.getParameter("ISBN");
		
		
		//prueba para ver si lo estamos jalando bien
		System.out.println(nombreLibro);
		System.out.println(nombreAutor);
		System.out.println(generoLibro);
		System.out.println(ISBN);
		
		//alimentando objeto miLibro
		miLibro.setNombreLibro(nombreLibro);
		miLibro.setNombreAutor(nombreAutor);
		miLibro.setGeneroLibro(generoLibro);
		miLibro.setISBN(ISBN);
		
		//validando si se construyo correctamente
		response.getWriter().append("El libro con ISBN " + miLibro.getISBN() + " se llama " + miLibro.getNombreLibro() + " el autor es " + miLibro.getNombreAutor() + " y corresponde al género " + miLibro.getGeneroLibro());
		
		session.persist(miLibro);
	    System.out.println("objeto en persist");
	       
       //ejecuta la transaccion
       t.commit();
       System.out.println("se hizo commit");
       
       //cerrar la session
       session.close();
       System.out.println("guardado exitosamente");
		
	}		
}

