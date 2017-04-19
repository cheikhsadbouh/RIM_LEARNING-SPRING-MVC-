package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StudentsTrainings  implements Serializable{
	
	
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(unique = true, nullable = false)
	 private int id;
	 private String user;
	 private String idTraining;        
	 
	 
	 public StudentsTrainings(){}
	 
	public StudentsTrainings(int id, String user, String idTraining) {
		super();
		this.id = id;
		this.user = user;
		this.idTraining = idTraining;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return user;
	}
	public void setUsername(String user) {
		this.user = user;
	}
	public String getIdTraining() {
		return idTraining;
	}
	public void setIdTraining(String idTraining) {
		this.idTraining = idTraining;
	}
	 
	 
	 

}
