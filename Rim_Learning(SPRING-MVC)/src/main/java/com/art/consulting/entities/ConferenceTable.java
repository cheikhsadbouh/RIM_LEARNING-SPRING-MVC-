package com.art.consulting.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class ConferenceTable implements Serializable {
	    
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id_conference ;
	
	
	private String date ;
	private String title ;
	
	@OneToMany(targetEntity=StudentConferenceTemporary.class,mappedBy="conference",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<StudentConferenceTemporary> conferencetemporary ;
	
	@OneToMany(targetEntity=ConferenceJoinedStudent.class,mappedBy="idconference",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<ConferenceJoinedStudent> conferencejoindstudent;

	@ManyToOne
	@JoinColumn(name="id_teacher")
	private  Teacher teacher ;

	@ManyToOne
	@JoinColumn(name="id_post_payment")
	private  Homepage post ;
	
	public ConferenceTable() {
	
	}

	

	public ConferenceTable(int id_conference, String date, String title,
			List<StudentConferenceTemporary> conferencetemporary, List<ConferenceJoinedStudent> conferencejoindstudent,
			Teacher teacher, Homepage post) {
		super();
		this.id_conference = id_conference;
		this.date = date;
		this.title = title;
		this.conferencetemporary = conferencetemporary;
		this.conferencejoindstudent = conferencejoindstudent;
		this.teacher = teacher;
		this.post = post;
	}



	public List<ConferenceJoinedStudent> getConferencejoindstudent() {
		return conferencejoindstudent;
	}



	public void setConferencejoindstudent(List<ConferenceJoinedStudent> conferencejoindstudent) {
		this.conferencejoindstudent = conferencejoindstudent;
	}



	public int getId_conference() {
		return id_conference;
	}

	public void setId_conference(int id_conference) {
		this.id_conference = id_conference;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<StudentConferenceTemporary> getConferencetemporary() {
		return conferencetemporary;
	}

	public void setConferencetemporary(List<StudentConferenceTemporary> conferencetemporary) {
		this.conferencetemporary = conferencetemporary;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Homepage getPost() {
		return post;
	}

	public void setPost(Homepage post) {
		this.post = post;
	}
	
	



	
	




}
