package com.art.consulting.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Temporarystudent  implements Serializable{
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	
	private int idStudent ;
	private String studentPhoneNumber;
	private Date timer ;// timer is used for alterting user that is not pay yet 
	private int idService ;
	
	
	
	

	public Temporarystudent() {
		
		
	}
	





	public Temporarystudent(int idStudent, String studentPhoneNumber, Date timer, int idService) {
		
		this.idStudent = idStudent;
		this.studentPhoneNumber = studentPhoneNumber;
		this.timer = timer;
		this.idService = idService;
	}






	public int getIdStudent() {
		return idStudent;
	}





	public void setIdStudent(int idStudent) {
		this.idStudent = idStudent;
	}





	public String getStudentPhoneNumber() {
		return studentPhoneNumber;
	}





	public void setStudentPhoneNumber(String studentPhoneNumber) {
		this.studentPhoneNumber = studentPhoneNumber;
	}





	public Date getTimer() {
		return timer;
	}





	public void setTimer(Date timer) {
		this.timer = timer;
	}





	public int getIdService() {
		return idService;
	}





	public void setIdService(int idService) {
		this.idService = idService;
	}
	

}
