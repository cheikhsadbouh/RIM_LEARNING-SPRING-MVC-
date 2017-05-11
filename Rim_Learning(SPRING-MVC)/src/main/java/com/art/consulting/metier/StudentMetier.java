package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.Groups;
import com.art.consulting.entities.JoinedGroupStudent;
import com.art.consulting.entities.Student;
import com.art.consulting.entities.StudentsTrainings;

public interface StudentMetier {
	
	public void addStudent(Student student);
	public Student findbyname(String name);
	public List<StudentsTrainings> findByUsername(String user);
	public Student findone(Integer arg0);
	
	public List<JoinedGroupStudent> findmygroups(int  id);
	public List<Groups> findallgroups();
}
