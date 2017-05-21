package com.art.consulting.entities;

import java.io.Serializable;
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
public class Groups  implements Serializable {
	
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int idGroups ;
	
	private String groupName;
	
	private String  itemType ;
	
	private String section ;
	private  String  urlPhoto ;
	
	
	@ManyToMany()
	@JoinTable(name="join_teachers_groups",
	joinColumns={@JoinColumn(name="idGroups")},
	inverseJoinColumns={@JoinColumn(name="teacherId")})
	private List<Teacher> teacher;

	@OneToMany(targetEntity=GroupTemporaryStudent.class,mappedBy="group",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<GroupTemporaryStudent> grouptemporaryStudent;
	
	@OneToMany(targetEntity=JoinedGroupStudent.class,mappedBy="groups",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<JoinedGroupStudent> joinedgroupStudent;
	

	@OneToMany(targetEntity=GroupsPosts.class,mappedBy="group_post",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<GroupsPosts> Groupsposts;
	
	
	
	public Groups(){}



	public Groups(int idGroups, String groupName, String itemType, String section, String urlPhoto,
			List<Teacher> teacher, List<GroupTemporaryStudent> grouptemporaryStudent,
			List<JoinedGroupStudent> joinedgroupStudent, List<GroupsPosts> groupsposts) {
		super();
		this.idGroups = idGroups;
		this.groupName = groupName;
		this.itemType = itemType;
		this.section = section;
		this.urlPhoto = urlPhoto;
		this.teacher = teacher;
		this.grouptemporaryStudent = grouptemporaryStudent;
		joinedgroupStudent = joinedgroupStudent;
		Groupsposts = groupsposts;
	}



	public int getIdGroups() {
		return idGroups;
	}



	public void setIdGroups(int idGroups) {
		this.idGroups = idGroups;
	}



	public String getGroupName() {
		return groupName;
	}



	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}



	public String getItemType() {
		return itemType;
	}



	public void setItemType(String itemType) {
		this.itemType = itemType;
	}



	public String getSection() {
		return section;
	}



	public void setSection(String section) {
		this.section = section;
	}



	public String getUrlPhoto() {
		return urlPhoto;
	}



	public void setUrlPhoto(String urlPhoto) {
		this.urlPhoto = urlPhoto;
	}



	public List<Teacher> getTeacher() {
		return teacher;
	}



	public void setTeacher(List<Teacher> teacher) {
		this.teacher = teacher;
	}



	public List<GroupTemporaryStudent> getGrouptemporaryStudent() {
		return grouptemporaryStudent;
	}



	public void setGrouptemporaryStudent(List<GroupTemporaryStudent> grouptemporaryStudent) {
		this.grouptemporaryStudent = grouptemporaryStudent;
	}



	public List<JoinedGroupStudent> getJoinedgroupStudent() {
		return joinedgroupStudent;
	}



	public void setJoinedgroupStudent(List<JoinedGroupStudent> joinedgroupStudent) {
		joinedgroupStudent = joinedgroupStudent;
	}



	public List<GroupsPosts> getGroupsposts() {
		return Groupsposts;
	}



	public void setGroupsposts(List<GroupsPosts> groupsposts) {
		Groupsposts = groupsposts;
	}


	

	
	
	
	

}
