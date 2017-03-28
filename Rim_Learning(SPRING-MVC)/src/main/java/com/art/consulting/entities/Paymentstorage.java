package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Paymentstorage  implements Serializable{


	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 	
	private int idPayment ;
	private int teacherId;
	private int balance ;
	private String teacherPhoneNumber ;
	
	

	public Paymentstorage() {
		
		
	}
	



	public Paymentstorage(int idPayment, int teacherId, int balance, String teacherPhoneNumber) {
		super();
		this.idPayment = idPayment;
		this.teacherId = teacherId;
		this.balance = balance;
		this.teacherPhoneNumber = teacherPhoneNumber;
	}




	public int getIdPayment() {
		return idPayment;
	}



	public void setIdPayment(int idPayment) {
		this.idPayment = idPayment;
	}



	public int getTeacherId() {
		return teacherId;
	}



	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}



	public int getBalance() {
		return balance;
	}



	public void setBalance(int balance) {
		this.balance = balance;
	}



	public String getTeacherPhoneNumber() {
		return teacherPhoneNumber;
	}



	public void setTeacherPhoneNumber(String teacherPhoneNumber) {
		this.teacherPhoneNumber = teacherPhoneNumber;
	}
	

	
	
}
