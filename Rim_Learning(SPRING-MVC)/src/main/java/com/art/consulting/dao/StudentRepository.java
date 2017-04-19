package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.Student;

public interface StudentRepository  extends JpaRepository<Student, Integer>{

	 @Query("FROM Student t  where t.username = :user") 
	    public  Student findUserByName(@Param("user") String User);


	
}
