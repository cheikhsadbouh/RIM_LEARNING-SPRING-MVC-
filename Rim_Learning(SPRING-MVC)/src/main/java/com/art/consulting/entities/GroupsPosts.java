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
public class GroupsPosts  implements Serializable {
	
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int idpost ;
	

	@Column(columnDefinition = "longtext")
	private String Content  ;
	
	@ManyToOne
	@JoinColumn(name="id_group")
	private  Groups group_post ;
	

	@ManyToOne
	@JoinColumn(name="id_student")
	private  Student student_grp_post ;
	

	@ManyToOne
	@JoinColumn(name="id_teacher")
	private  Teacher teacher_grp_post ;

	
	
	
	
	public GroupsPosts(){}
	

	public GroupsPosts(int idpost, String urlphoto, String content, Groups group_post, Student student,
			Teacher teacher) {
		super();
		this.idpost = idpost;
		
		Content = content;
		this.group_post = group_post;
		this.student_grp_post = student;
		this.teacher_grp_post = teacher;
	}


	public int getIdpost() {
		return idpost;
	}


	public void setIdpost(int idpost) {
		this.idpost = idpost;
	}


	

	public String getContent() {
		return Content;
	}


	public void setContent(String content) {
		Content = content;
	}


	public Groups getGroup_post() {
		return group_post;
	}


	public void setGroup_post(Groups group_post) {
		this.group_post = group_post;
	}


	public Student getStudent() {
		return student_grp_post;
	}


	public void setStudent(Student student) {
		this.student_grp_post = student;
	}


	public Teacher getTeacher() {
		return teacher_grp_post;
	}


	public void setTeacher(Teacher teacher) {
		this.teacher_grp_post = teacher;
	}
	
	

}
