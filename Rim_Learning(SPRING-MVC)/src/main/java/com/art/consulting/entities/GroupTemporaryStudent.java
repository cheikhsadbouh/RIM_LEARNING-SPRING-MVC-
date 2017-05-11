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
public class GroupTemporaryStudent  implements Serializable {

	
	
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(unique = true, nullable = false)
	  private int idGroupTemporary;
	  
	  private String price ;
	  private  String PhoneNumber ;
	  
		@ManyToOne
		@JoinColumn(name="id_student")
		private  Student student ;
		
		@ManyToOne
		@JoinColumn(name="id_group")
		private  Groups group ;
		
		
		public GroupTemporaryStudent(){}
		
	

		public GroupTemporaryStudent(int idGroupTemporary, String price, String phoneNumber, Student student,
				Groups group) {
			super();
			this.idGroupTemporary = idGroupTemporary;
			this.price = price;
			PhoneNumber = phoneNumber;
			this.student = student;
			this.group = group;
		}

		public int getIdGroupTemporary() {
			return idGroupTemporary;
		}

		public void setIdGroupTemporary(int idGroupTemporary) {
			this.idGroupTemporary = idGroupTemporary;
		}

		public String getPrice() {
			return price;
		}

		public void setPrice(String price) {
			this.price = price;
		}

		public String getPhoneNumber() {
			return PhoneNumber;
		}

		public void setPhoneNumber(String phoneNumber) {
			PhoneNumber = phoneNumber;
		}

		public Student getStudent() {
			return student;
		}

		public void setStudent(Student student) {
			this.student = student;
		}

		public Groups getGroup() {
			return group;
		}

		public void setGroup(Groups group) {
			this.group = group;
		}
		
		
		
}
