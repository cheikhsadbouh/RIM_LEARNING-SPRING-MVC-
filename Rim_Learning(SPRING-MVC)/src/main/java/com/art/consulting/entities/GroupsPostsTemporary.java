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
public class GroupsPostsTemporary implements Serializable {
	
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int idpost ;
	
	
	@Column(columnDefinition = "longtext")
	private String content  ;
	
	@ManyToOne
	@JoinColumn(name="id_group")
	private  Groups group_post ;
	

	@ManyToOne
	@JoinColumn(name="id_student")
	private  Student studentpost ;

	
	public GroupsPostsTemporary(){}
	




	public GroupsPostsTemporary(int idpost, String content, Groups group_post, Student studentpost) {
		super();
		this.idpost = idpost;
		this.content = content;
		this.group_post = group_post;
		this.studentpost = studentpost;
	}





	public int getIdpost() {
		return idpost;
	}


	public void setIdpost(int idpost) {
		this.idpost = idpost;
	}


	


	public Groups getGroup_post() {
		return group_post;
	}


	public void setGroup_post(Groups group_post) {
		this.group_post = group_post;
	}


	public Student getStudentpost() {
		return studentpost;
	}


	public void setStudentpost(Student studentpost) {
		this.studentpost = studentpost;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
	

	

	
	
	
	
	

}
