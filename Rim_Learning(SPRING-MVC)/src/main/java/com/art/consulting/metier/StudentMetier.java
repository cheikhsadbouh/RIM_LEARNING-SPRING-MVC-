package com.art.consulting.metier;

import com.art.consulting.entities.Student;

public interface StudentMetier {
	
	public void addStudent(Student student);
	public Student findbyname(String name);

}
