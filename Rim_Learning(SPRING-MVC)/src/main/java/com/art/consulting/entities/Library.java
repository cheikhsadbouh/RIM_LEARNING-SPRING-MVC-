package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Library implements Serializable {
	


	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id ;
	private String pdfUrl;
	
	
	public Library() {
		
	}
	
	public Library(int id, String pdfUrl) {
		
		this.id = id;
		this.pdfUrl = pdfUrl;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPdfUrl() {
		return pdfUrl;
	}
	public void setPdfUrl(String pdfUrl) {
		this.pdfUrl = pdfUrl;
	}
	
	
	
}
