package com.art.consulting.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;




@Entity
public class Homepage implements Serializable{
	
	
	 
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO) 
	private  int idHomePage;
	 @Column(columnDefinition = "longtext")
	private String msg ;
	 private String type_of_post ;

	@ManyToOne
	@JoinColumn(name="teacher_id")
	private Teacher teacher ;
	
	
	@OneToMany(targetEntity=VoteContent.class,mappedBy="post",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<VoteContent> vote ;
	
	public Homepage() {
		
		
	}

	


	public Homepage(int idHomePage, String msg, String type_of_post, Teacher teacher, List<VoteContent> vote) {
		super();
		this.idHomePage = idHomePage;
		this.msg = msg;
		this.type_of_post = type_of_post;
		this.teacher = teacher;
		this.vote = vote;
	}







	public String getType_of_post() {
		return type_of_post;
	}











	public void setType_of_post(String type_of_post) {
		this.type_of_post = type_of_post;
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











	public List<VoteContent> getVote() {
		return vote;
	}











	public void setVote(List<VoteContent> vote) {
		this.vote = vote;
	}
	
	
	
	

}
