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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;



@Entity
public class Student extends User implements Serializable{
	 
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(unique = true, nullable = false)
	  private int studentId;
	  
	  private String firstName ;
	  private String lastName;
	  private String email;
	  private String urlPhoto;
	  private String password ;
	  private String section ;
	  
	@OneToMany(targetEntity=Notification.class,mappedBy="studentId",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Notification> notification ;
	
	
	@ManyToMany
	@JoinTable(name="join_student_training",
	joinColumns={@JoinColumn(name="studentId")},
	inverseJoinColumns={@JoinColumn(name="idTraining")})
	private List<Training> training;


	public Student (){
		
	}
	public Student(int studentId, String firstName, String lastName, String email, String urlPhoto, String password,
			String section, List<Notification> notification, List<Training> training) {
		super();
		this.studentId = studentId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.urlPhoto = urlPhoto;
		this.password = password;
		this.section = section;
		this.notification = notification;
		this.training = training;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUrlPhoto() {
		return urlPhoto;
	}
	public void setUrlPhoto(String urlPhoto) {
		this.urlPhoto = urlPhoto;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public List<Notification> getNotification() {
		return notification;
	}
	public void setNotification(List<Notification> notification) {
		this.notification = notification;
	}
	public List<Training> getTraining() {
		return training;
	}
	public void setTraining(List<Training> training) {
		this.training = training;
	}
	
	  
	
	
	 
}
