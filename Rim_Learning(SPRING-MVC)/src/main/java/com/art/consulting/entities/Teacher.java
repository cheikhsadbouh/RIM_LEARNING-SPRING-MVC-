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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
	  private String username;
	  private String poneNumber;
	  private String item ;
	  @Column(columnDefinition = " varchar(23) default 'Teacher'", insertable=false)
	  private String role ;
	  @Column(columnDefinition = "TINYINT default '1'", insertable=false)
	  private int enabled ;
	


	@OneToMany(targetEntity=Homepage.class,mappedBy="teacher",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Homepage> post ;
	
	
	
	@OneToMany(targetEntity=Training.class,mappedBy="teacherId",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Training> training ;
	
	
	@OneToMany(targetEntity=Notification.class,mappedBy="teacherId",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Notification> notification ;
	
	
	@OneToMany(targetEntity=ConferenceTable.class,mappedBy="teacher",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<ConferenceTable> teacherconference ;
	
	
	@OneToMany(targetEntity=GroupsPosts.class,mappedBy="teacher_grp_post",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<GroupsPosts> Groupsposts;
	
	
	
	
	
	
	@ManyToMany()
	@JoinTable(name="join_teachers_groups",
	joinColumns={@JoinColumn(name="teacherId")},
	inverseJoinColumns={@JoinColumn(name="idGroups")})
	private List<Groups> Groups;
	
	
	
	
	public Teacher(){
		
	}

	public Teacher(int teacherId, String firstName, String lastName, String email, String urlPhoto, String password,
			String section, String username, String poneNumber, String item, String role, int enabled,
			List<Homepage> post, List<Training> training, List<Notification> notification,
			List<ConferenceTable> teacherconference, List<GroupsPosts> groupsposts,
			List<GroupsPostsTemporary> groupsPoststemporary, List<com.art.consulting.entities.Groups> groups) {
		super();
		this.teacherId = teacherId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.urlPhoto = urlPhoto;
		this.password = password;
		this.section = section;
		this.username = username;
		this.poneNumber = poneNumber;
		this.item = item;
		this.role = role;
		this.enabled = enabled;
		this.post = post;
		this.training = training;
		this.notification = notification;
		this.teacherconference = teacherconference;
		Groupsposts = groupsposts;
	
		Groups = groups;
	}






















































































	public List<GroupsPosts> getGroupsposts() {
		return Groupsposts;
	}





























	public void setGroupsposts(List<GroupsPosts> groupsposts) {
		Groupsposts = groupsposts;
	}





























	public List<Groups> getGroups() {
		return Groups;
	}
























	public void setGroups(List<Groups> groups) {
		Groups = groups;
	}
























	public List<ConferenceTable> getTeacherconference() {
		return teacherconference;
	}


















	public void setTeacherconference(List<ConferenceTable> teacherconference) {
		this.teacherconference = teacherconference;
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







	public String getRole() {
		return role;
	}







	public void setRole(String role) {
		this.role = role;
	}







	public String getUsername() {
		return username;
	}







	public void setUsername(String username) {
		this.username = username;
	}







	public int getEnabled() {
		return enabled;
	}







	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}



	public String getPoneNumber() {
		return poneNumber;
	}



	public void setPoneNumber(String poneNumber) {
		this.poneNumber = poneNumber;
	}



	public String getItem() {
		return item;
	}



	public void setItem(String item) {
		this.item = item;
	}
	
	
	
	

}
