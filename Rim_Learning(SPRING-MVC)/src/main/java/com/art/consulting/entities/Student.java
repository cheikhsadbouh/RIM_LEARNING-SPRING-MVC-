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

import org.hibernate.annotations.ColumnDefault;



@Entity
public class Student extends User implements Serializable{
	 

	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(unique = true, nullable = false)
	  private int studentId;
	  
	  private String firstName ;
	  private String lastName;
	  private String username;
	  private String email;
	  private String urlPhoto;
	  private String password ;
	  private String section ;
	    
	  @Column(columnDefinition = " varchar(23) default 'Student'", insertable=false)
	  private String role ;
	  @Column(columnDefinition = "TINYINT default '1'", insertable=false)
	  private int enabled ;
	  
	@OneToMany(targetEntity=Notification.class,mappedBy="studentId",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<Notification> notification ;
	  
	@OneToMany(targetEntity=VoteResult.class,mappedBy="student",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<VoteResult> Voteresult ;
	
	@OneToMany(targetEntity=StudentConferenceTemporary.class,mappedBy="tempstudent",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<StudentConferenceTemporary> conferencetemporary ;
	

	@OneToMany(targetEntity=ConferenceJoinedStudent.class,mappedBy="idstudent",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<ConferenceJoinedStudent> conferencejoindstudent;
	
	
	@OneToMany(targetEntity=GroupTemporaryStudent.class,mappedBy="student",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<GroupTemporaryStudent> grouptemporaryStudent;
	
	@OneToMany(targetEntity=JoinedGroupStudent.class,mappedBy="student",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<JoinedGroupStudent> JoinedgroupStudent;
	
	
	@ManyToMany()
	@JoinTable(name="join_student_training",
	joinColumns={@JoinColumn(name="studentId")},
	inverseJoinColumns={@JoinColumn(name="idTraining")})
	private List<Training> training;


	public Student (){
		
	}




	public Student(int studentId, String firstName, String lastName, String username, String email, String urlPhoto,
			String password, String section, String role, int enabled, List<Notification> notification,
			List<VoteResult> voteresult, List<StudentConferenceTemporary> conferencetemporary,
			List<ConferenceJoinedStudent> conferencejoindstudent, List<GroupTemporaryStudent> grouptemporaryStudent,
			List<JoinedGroupStudent> joinedgroupStudent, List<Training> training) {
		super();
		this.studentId = studentId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.urlPhoto = urlPhoto;
		this.password = password;
		this.section = section;
		this.role = role;
		this.enabled = enabled;
		this.notification = notification;
		Voteresult = voteresult;
		this.conferencetemporary = conferencetemporary;
		this.conferencejoindstudent = conferencejoindstudent;
		this.grouptemporaryStudent = grouptemporaryStudent;
		JoinedgroupStudent = joinedgroupStudent;
		this.training = training;
	}












	public List<GroupTemporaryStudent> getGrouptemporaryStudent() {
		return grouptemporaryStudent;
	}












	public void setGrouptemporaryStudent(List<GroupTemporaryStudent> grouptemporaryStudent) {
		this.grouptemporaryStudent = grouptemporaryStudent;
	}












	public List<JoinedGroupStudent> getJoinedgroupStudent() {
		return JoinedgroupStudent;
	}












	public void setJoinedgroupStudent(List<JoinedGroupStudent> joinedgroupStudent) {
		JoinedgroupStudent = joinedgroupStudent;
	}












	public List<StudentConferenceTemporary> getConferencetemporary() {
		return conferencetemporary;
	}






	public void setConferencetemporary(List<StudentConferenceTemporary> conferencetemporary) {
		this.conferencetemporary = conferencetemporary;
	}






	public List<ConferenceJoinedStudent> getConferencejoindstudent() {
		return conferencejoindstudent;
	}






	public void setConferencejoindstudent(List<ConferenceJoinedStudent> conferencejoindstudent) {
		this.conferencejoindstudent = conferencejoindstudent;
	}






	public List<VoteResult> getVoteresult() {
		return Voteresult;
	}








	public void setVoteresult(List<VoteResult> voteresult) {
		Voteresult = voteresult;
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


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
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


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
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




	public int getEnabled() {
		return enabled;
	}




	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}


	
	  
	
	
	 
}
