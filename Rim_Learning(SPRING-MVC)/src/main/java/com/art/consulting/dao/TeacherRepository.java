package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.art.consulting.entities.Teacher;

public interface TeacherRepository  extends JpaRepository<Teacher, Integer>{
	
	

}
