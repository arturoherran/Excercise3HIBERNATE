package com.excercise3HIBERNATE.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="libro")
public class Libro {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idLibro")
	private int idLibro;
	
	@Column(name="nombreLibro")
	private String nombreLibro;
	
	@Column(name="nombreAutor")
	private String nombreAutor;
	
	@Column(name="generoLibro")
	private String generoLibro;
	
	@Column(name="ISBN")
	private String ISBN;
	
	
	public int getIdLibro() {
		return idLibro;
	}
	
//	public void setIdLibro(int idLibro) {
//		this.idLibro = idLibro;
//	}
	
	public String getNombreLibro() {
		return nombreLibro;
	}
	public void setNombreLibro(String nombreLibro) {
		this.nombreLibro = nombreLibro;
	}
	public String getNombreAutor() {
		return nombreAutor;
	}
	public void setNombreAutor(String nombreAutor) {
		this.nombreAutor = nombreAutor;
	}
	public String getGeneroLibro() {
		return generoLibro;
	}
	public void setGeneroLibro(String generoLibro) {
		this.generoLibro = generoLibro;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}
	
	

}
