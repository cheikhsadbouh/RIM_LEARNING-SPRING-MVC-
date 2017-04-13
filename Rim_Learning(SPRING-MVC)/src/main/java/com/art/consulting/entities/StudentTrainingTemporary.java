package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StudentTrainingTemporary  implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO) 	 
	private int  id ;
	private String idTraining;
	private String idStudent ;
	private String priceTraining ;
	private String phoneNumberStudent ;
	
	
	public StudentTrainingTemporary(){}
	
	public StudentTrainingTemporary(int id, String idTraining, String idStudent, String priceTraining,
			String phoneNumberStudent) {
		
		this.id = id;
		this.idTraining = idTraining;
		this.idStudent = idStudent;
		this.priceTraining = priceTraining;
		this.phoneNumberStudent = phoneNumberStudent;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIdTraining() {
		return idTraining;
	}
	public void setIdTraining(String idTraining) {
		this.idTraining = idTraining;
	}
	public String getIdStudent() {
		return idStudent;
	}
	public void setIdStudent(String idStudent) {
		this.idStudent = idStudent;
	}
	public String getPriceTraining() {
		return priceTraining;
	}
	public void setPriceTraining(String priceTraining) {
		this.priceTraining = priceTraining;
	}
	public String getPhoneNumberStudent() {
		return phoneNumberStudent;
	}
	public void setPhoneNumberStudent(String phoneNumberStudent) {
		this.phoneNumberStudent = phoneNumberStudent;
	}
	
	
	

}
