package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.art.consulting.entities.Student;

public interface StudentRepository  extends JpaRepository<Student, Integer>{

	
	
}
