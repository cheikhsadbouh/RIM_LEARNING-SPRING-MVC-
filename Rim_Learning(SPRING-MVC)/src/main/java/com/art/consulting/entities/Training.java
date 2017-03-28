package com.art.consulting.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity
public class Training  implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO) 	 
	private int  idTraining ;
	private String name ;
	private String type ;
	private int price;
     
	
	@ManyToOne
	@JoinColumn(name="teacher_id")
	private Teacher teacherId ;
	
	@OneToMany(targetEntity=Video.class,mappedBy="training",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Video> video ;
	
	
	
	@ManyToMany
	@JoinTable(name="join_student_training",
	joinColumns={@JoinColumn(name="idTraining")},
	inverseJoinColumns={@JoinColumn(name="studentId")})
	private List<Student> Student;
	
	public Training() {
	
	
	}
	
	
	
	public Training(int idTraining, String name, String type, int price) {
	
		this.idTraining = idTraining;
		this.name = name;
		this.type = type;
		this.price = price;
	}



	public int getIdTraining() {
		return idTraining;
	}



	public void setIdTraining(int idTraining) {
		this.idTraining = idTraining;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public Teacher getTeacherId() {
		return teacherId;
	}



	public void setTeacherId(Teacher teacherId) {
		this.teacherId = teacherId;
	}



	public List<Video> getVideo() {
		return video;
	}



	public void setVideo(List<Video> video) {
		this.video = video;
	}



	public List<Student> getStudent() {
		return Student;
	}



	public void setStudent(List<Student> student) {
		Student = student;
	}
	
	
	

}
