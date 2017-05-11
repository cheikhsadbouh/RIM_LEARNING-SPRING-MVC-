package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
public class VoteResult  implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id_vote_result;
	
	
	
	@ManyToOne
	@JoinColumn(name="VoteContent_id")
	private VoteContent votecontent ;
	
	
	@ManyToOne
	@JoinColumn(name="student_id")
	private Student student ;
	
	public VoteResult(){}
	
	
	

	public VoteResult(int id_vote_result, int result, VoteContent votecontent, Student student) {
		super();
		this.id_vote_result = id_vote_result;
		
		this.votecontent = votecontent;
		this.student = student;
	}

	public int getId_vote_result() {
		return id_vote_result;
	}

	public void setId_vote_result(int id_vote_result) {
		this.id_vote_result = id_vote_result;
	}

	

	public VoteContent getVotecontent() {
		return votecontent;
	}

	public void setVotecontent(VoteContent votecontent) {
		this.votecontent = votecontent;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	
	

}
