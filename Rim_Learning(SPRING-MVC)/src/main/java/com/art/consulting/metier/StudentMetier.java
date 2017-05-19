package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.GroupTemporaryStudent;
import com.art.consulting.entities.Groups;
import com.art.consulting.entities.GroupsPostsTemporary;
import com.art.consulting.entities.JoinedGroupStudent;
import com.art.consulting.entities.Student;
import com.art.consulting.entities.StudentsTrainings;

public interface StudentMetier {
	
	public void addStudent(Student student);
	public Student findbyname(String name);
	public List<StudentsTrainings> findByUsername(String user);
	public Student findone(Integer arg0);
	
	public List<JoinedGroupStudent> findmygroups(Student std);
	public List<Groups> findallgroups();
	
	public void addStudentToTemporaryGroup(GroupTemporaryStudent obj);
	
	public Groups findGroupById(int id );
	
	public List<GroupTemporaryStudent> findPhoneStudentInTemporaryGroup(String ph);
	
	public String getDateAfterThreeDays();
	
	public void addStudentToGroup(JoinedGroupStudent obj);
	
	public void deleteStudentFromtempgroup(int obj);
	
	
	
	public void add_grp_temp_post(GroupsPostsTemporary obj);
	public List<GroupsPostsTemporary> find_grp_temp_post( Groups   obj);
}

