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
public class JoinedGroupStudent    implements Serializable {

	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Column(unique = true, nullable = false)
	  private int id;
	  
	  private String expiredDate;
	  
		@ManyToOne
		@JoinColumn(name="id_student")
		private  Student students ;   
		
		@ManyToOne
		@JoinColumn(name="id_group")
		private  Groups groups ;

		public JoinedGroupStudent(){}
		
		public JoinedGroupStudent(int id, String expiredDate, Student students, Groups groups) {
			super();
			this.id = id;
			this.expiredDate = expiredDate;
			this.students = students;
			this.groups = groups;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getExpiredDate() {
			return expiredDate;
		}

		public void setExpiredDate(String expiredDate) {
			this.expiredDate = expiredDate;
		}

		public Student getStudents() {
			return students;
		}

		public void setStudents(Student students) {
			this.students = students;
		}

		public Groups getGroups() {
			return groups;
		}

		public void setGroups(Groups groups) {
			this.groups = groups;
		}

		
	
		
		
		
}
