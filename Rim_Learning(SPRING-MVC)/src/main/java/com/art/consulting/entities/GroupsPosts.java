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
	private String content  ;
	
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





	public GroupsPosts(int idpost, String content, Groups group_post, Student student_grp_post,
			Teacher teacher_grp_post) {
		super();
		this.idpost = idpost;
		this.content = content;
		this.group_post = group_post;
		this.student_grp_post = student_grp_post;
		this.teacher_grp_post = teacher_grp_post;
	}





	public int getIdpost() {
		return idpost;
	}





	public void setIdpost(int idpost) {
		this.idpost = idpost;
	}





	public String getContent() {
		return content;
	}





	public void setContent(String content) {
		this.content = content;
	}





	public Groups getGroup_post() {
		return group_post;
	}





	public void setGroup_post(Groups group_post) {
		this.group_post = group_post;
	}





	public Student getStudent_grp_post() {
		return student_grp_post;
	}





	public void setStudent_grp_post(Student student_grp_post) {
		this.student_grp_post = student_grp_post;
	}





	public Teacher getTeacher_grp_post() {
		return teacher_grp_post;
	}





	public void setTeacher_grp_post(Teacher teacher_grp_post) {
		this.teacher_grp_post = teacher_grp_post;
	}
	

	

}
