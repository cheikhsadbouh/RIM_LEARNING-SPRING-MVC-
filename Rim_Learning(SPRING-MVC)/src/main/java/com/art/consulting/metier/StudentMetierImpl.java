package com.art.consulting.metier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.StudentRepository;
import com.art.consulting.entities.Student;

@Service
public class StudentMetierImpl implements StudentMetier{

	@Autowired
	private StudentRepository StudentRepository ;

	@Override
	public void addStudent(Student student) {
		StudentRepository.save(student);
		
	}
	
	
	
	
	

}
