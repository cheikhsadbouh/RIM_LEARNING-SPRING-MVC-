package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.data.domain.Persistable;

@Entity
public class StudentsTrainings  implements Serializable{
	
	
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	 private int id;
	 private String user;
	 private String idTraining;        
	 
	 private String expired_data ;
	 
	 public StudentsTrainings(){}
	 
	 
	 
	 

	public StudentsTrainings(int id, String user, String idTraining, String expired_data) {
		super();
		this.id = id;
		this.user = user;
		this.idTraining = idTraining;
		this.expired_data = expired_data;
	}





	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getIdTraining() {
		return idTraining;
	}

	public void setIdTraining(String idTraining) {
		this.idTraining = idTraining;
	}

	public String getExpired_data() {
		return expired_data;
	}

	public void setExpired_data(String expired_data) {
		this.expired_data = expired_data;
	}






	 
	
	 

}
