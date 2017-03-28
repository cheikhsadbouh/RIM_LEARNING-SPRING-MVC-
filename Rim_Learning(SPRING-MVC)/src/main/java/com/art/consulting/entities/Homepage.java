package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Homepage implements Serializable{
	
	
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO) 
	private  int idHomePage;
	private String msg ;
	

	@ManyToOne
	@JoinColumn(name="teacher_id")
	private Teacher teacher ;
	
	
	
	public Homepage() {
		
		
	}

	



	public Homepage(int idHomePage, String msg, Teacher teacher) {
		super();
		this.idHomePage = idHomePage;
		this.msg = msg;
		this.teacher = teacher;
	}





	public Teacher getTeacher() {
		return teacher;
	}



	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}



	public int getIdHomePage() {
		return idHomePage;
	}


	public void setIdHomePage(int idHomePage) {
		this.idHomePage = idHomePage;
	}


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	
	

}
