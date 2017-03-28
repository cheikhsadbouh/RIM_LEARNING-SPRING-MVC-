package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Visiotable  implements Serializable{

	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	
	private int  idStudent ;
	private String sessionId ;
	
    public Visiotable() {
	
	}
    

	public Visiotable(int idStudent, String sessionId) {
		super();
		this.idStudent = idStudent;
		this.sessionId = sessionId;
	}


	public int getIdStudent() {
		return idStudent;
	}

	public void setIdStudent(int idStudent) {
		this.idStudent = idStudent;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	
	

}
