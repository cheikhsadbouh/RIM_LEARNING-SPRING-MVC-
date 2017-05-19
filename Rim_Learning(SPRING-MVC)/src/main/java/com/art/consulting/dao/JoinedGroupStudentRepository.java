package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.JoinedGroupStudent;
import com.art.consulting.entities.Student;

public interface JoinedGroupStudentRepository  extends JpaRepository<JoinedGroupStudent, Integer>{

	 @Query("FROM JoinedGroupStudent t  where t.students = :id") 
	    public  List<JoinedGroupStudent> findgroupsbyid(@Param("id") Student  std);
}
