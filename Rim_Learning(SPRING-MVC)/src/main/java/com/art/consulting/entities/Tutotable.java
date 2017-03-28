package com.art.consulting.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Tutotable  implements Serializable{
	

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int idStudent;
	private Date dateExpired ;
	private Training trainingId ;
	
	public Tutotable() {
		
		
	}

	public Tutotable(int idStudent, Date dateExpired, Training trainingId) {
		super();
		this.idStudent = idStudent;
		this.dateExpired = dateExpired;
		this.trainingId = trainingId;
	}

	public int getIdStudent() {
		return idStudent;
	}

	public void setIdStudent(int idStudent) {
		this.idStudent = idStudent;
	}

	public Date getDateExpired() {
		return dateExpired;
	}

	public void setDateExpired(Date dateExpired) {
		this.dateExpired = dateExpired;
	}

	public Training getTrainingId() {
		return trainingId;
	}

	public void setTrainingId(Training trainingId) {
		this.trainingId = trainingId;
	}
	
	
	
	
	
}
