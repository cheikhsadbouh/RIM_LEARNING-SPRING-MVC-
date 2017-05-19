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
		
	
		public JoinedGroupStudent(int id, String expiredDate, Student student, Groups group) {
			super();
			this.id = id;
			this.expiredDate = expiredDate;
			this.students = student;
			this.groups = group;
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

		public Student getStudent() {
			return students;
		}

		public void setStudent(Student student) {
			this.students = student;
		}

		public Groups getGroup() {
			return groups;
		}

		public void setGroup(Groups group) {
			this.groups = group;
		}
		
		
		
}
