package com.art.consulting.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;




@Entity
public class Teacher  extends User  implements Serializable{
	
	
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(unique = true, nullable = false)
	  private int teacherId;
	  
	  private String firstName ;
	  private String lastName;
	  private String email;
	  private String urlPhoto;
	  private String password ;
	  private String section ;


	@OneToMany(targetEntity=Homepage.class,mappedBy="teacher",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Homepage> post ;
	
	
	
	@OneToMany(targetEntity=Training.class,mappedBy="teacherId",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Training> training ;
	
	
	@OneToMany(targetEntity=Notification.class,mappedBy="teacherId",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Notification> notification ;
	
	
	
	public Teacher(){
		
	}



	public Teacher(int teacherId, String firstName, String lastName, String email, String urlPhoto, String password,
			String section, List<Homepage> post, List<Training> training, List<Notification> notification) {
		super();
		this.teacherId = teacherId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.urlPhoto = urlPhoto;
		this.password = password;
		this.section = section;
		this.post = post;
		this.training = training;
		this.notification = notification;
	}



	public int getTeacherId() {
		return teacherId;
	}



	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
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



	public List<Homepage> getPost() {
		return post;
	}



	public void setPost(List<Homepage> post) {
		this.post = post;
	}



	public List<Training> getTraining() {
		return training;
	}



	public void setTraining(List<Training> training) {
		this.training = training;
	}



	public List<Notification> getNotification() {
		return notification;
	}



	public void setNotification(List<Notification> notification) {
		this.notification = notification;
	}
	
	
	

}