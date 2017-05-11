package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class StudentConferenceTemporary  implements Serializable  {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id ;
	private String price ;
	private String phoneStudent ;
	
	@ManyToOne
	@JoinColumn(name="temp_student")
	private  Student tempstudent ;
	
	@ManyToOne
	@JoinColumn(name="id_conference")
	private  ConferenceTable 	conference ;
	
	public StudentConferenceTemporary(){}
	

	public StudentConferenceTemporary(int id, String price, String phoneStudent, Student tempstudent,
			ConferenceTable conference) {
		super();
		this.id = id;
		this.price = price;
		this.phoneStudent = phoneStudent;
		this.tempstudent = tempstudent;
		this.conference = conference;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPhoneStudent() {
		return phoneStudent;
	}

	public void setPhoneStudent(String phoneStudent) {
		this.phoneStudent = phoneStudent;
	}

	public Student getTempstudent() {
		return tempstudent;
	}

	public void setTempstudent(Student tempstudent) {
		this.tempstudent = tempstudent;
	}

	public ConferenceTable getConference() {
		return conference;
	}

	public void setConference(ConferenceTable conference) {
		this.conference = conference;
	}
	

	
	
	

}
