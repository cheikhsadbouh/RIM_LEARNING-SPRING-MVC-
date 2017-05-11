package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class ConferenceJoinedStudent  implements Serializable  {

	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id_conferencejoined ;
	
	@ManyToOne
	@JoinColumn(name="id_conference")
	private  ConferenceTable idconference ;
	
	@ManyToOne
	@JoinColumn(name="id_student")
	private  Student idstudent ;

	private String code;
	
	


	public ConferenceJoinedStudent(){}
	

	
	
	
	public ConferenceJoinedStudent(int id_conferencejoined, ConferenceTable idconference, Student idstudent,
			String code) {
		super();
		this.id_conferencejoined = id_conferencejoined;
		this.idconference = idconference;
		this.idstudent = idstudent;
		this.code = code;
	}





	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}

	public int getId_conferencejoined() {
		return id_conferencejoined;
	}

	public void setId_conferencejoined(int id_conferencejoined) {
		this.id_conferencejoined = id_conferencejoined;
	}

	public ConferenceTable getIdconference() {
		return idconference;
	}

	public void setIdconference(ConferenceTable idconference) {
		this.idconference = idconference;
	}

	public Student getIdstudent() {
		return idstudent;
	}

	public void setIdstudent(Student idstudent) {
		this.idstudent = idstudent;
	}
	
	
	
	
}
