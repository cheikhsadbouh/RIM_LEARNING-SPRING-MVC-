package com.art.consulting.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ConferenceTable implements Serializable {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id ;
	private int idTeacher ;
	private int idStudent ;
	private Date date ;
	private String code ;
	
	

	public ConferenceTable() {
	
	}
	



	public ConferenceTable(int id, int idTeacher, int idStudent, Date date, String code) {
		
		this.id = id;
		this.idTeacher = idTeacher;
		this.idStudent = idStudent;
		this.date = date;
		this.code = code;
	}




	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getIdTeacher() {
		return idTeacher;
	}



	public void setIdTeacher(int idTeacher) {
		this.idTeacher = idTeacher;
	}



	public int getIdStudent() {
		return idStudent;
	}



	public void setIdStudent(int idStudent) {
		this.idStudent = idStudent;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public String getCode() {
		return code;
	}



	public void setCode(String code) {
		this.code = code;
	}



	




}
