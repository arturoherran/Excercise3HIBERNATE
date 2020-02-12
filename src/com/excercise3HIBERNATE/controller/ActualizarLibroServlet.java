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


@WebServlet(description = "Servlet para actualizar", urlPatterns = { "/ActualizarLibroServlet" })
public class ActualizarLibroServlet extends HttpServlet {
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
		
		//obtener datos de forma en jsp
		int idLibro = Integer.parseInt(request.getParameter("idLibro"));
		String nombreLibro = request.getParameter("nombreLibro");
		String nombreAutor = request.getParameter("nombreAutor");
		String generoLibro = request.getParameter("generoLibro");
		String ISBN = request.getParameter("ISBN");
		
		//crear objeto de actualización
		Libro libroActualizado = session.get(Libro.class, idLibro);
		
		
		//operaciones para actualizar libro
		libroActualizado.setNombreLibro(nombreLibro);
		libroActualizado.setNombreAutor(nombreAutor);
		libroActualizado.setGeneroLibro(generoLibro);
		libroActualizado.setISBN(ISBN);
		
		//commitear la transacción
		session.getTransaction().commit();
		
		//ahora cerramos la sesión
		session.close();
		
	}

}
