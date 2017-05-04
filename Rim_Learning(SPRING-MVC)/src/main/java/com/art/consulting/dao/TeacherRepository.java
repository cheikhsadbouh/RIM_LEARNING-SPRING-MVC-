package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.StudentsTrainings;
import com.art.consulting.entities.Teacher;

public interface TeacherRepository  extends JpaRepository<Teacher, Integer>{
	 @Query("FROM Teacher t  where t.username = :user")
	 public Teacher findTeacherByUsername(@Param("user") String user);
	

}
