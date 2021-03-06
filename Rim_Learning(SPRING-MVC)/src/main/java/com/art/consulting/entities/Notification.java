package com.art.consulting.entities;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Notification  implements Serializable{
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int idNotification ;
	private String value ;
	
	
	private String state ;
	
	private String datenotification ;
	@ManyToOne
	@JoinColumn(name="teacher_id")
	private Teacher teacherId ;

	@ManyToOne
	@JoinColumn(name="student_id")
	private Student studentId ;
	
	
	public Notification() {
		
		
		
	}

	


	public Notification(int idNotification, String value, String state, String datenotification, Teacher teacherId,
			Student studentId) {
		super();
		this.idNotification = idNotification;
		this.value = value;
		this.state = state;
		this.datenotification = datenotification;
		this.teacherId = teacherId;
		this.studentId = studentId;
	}















	public String getDatenotification() {
		return datenotification;
	}















	public void setDatenotification(String datenotification) {
		this.datenotification = datenotification;
	}















	public String getState() {
		return state;
	}







	public void setState(String state) {
		this.state = state;
	}







	public int getIdNotification() {
		return idNotification;
	}


	public void setIdNotification(int idNotification) {
		this.idNotification = idNotification;
	}


	public String getValue() {
		return value;
	}


	public void setValue(String value) {
		this.value = value;
	}


	public Teacher getTeacherId() {
		return teacherId;
	}


	public void setTeacherId(Teacher teacherId) {
		this.teacherId = teacherId;
	}


	public Student getStudentId() {
		return studentId;
	}


	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}
	
	

	
	
	
	

}
