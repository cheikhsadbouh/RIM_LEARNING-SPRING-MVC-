package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.GroupTemporaryStudent;


public interface GroupTemporaryStudentRepository  extends JpaRepository<GroupTemporaryStudent, Integer>{

	
	 @Query("FROM GroupTemporaryStudent t  where t.PhoneNumber = :phone") 
	 List<GroupTemporaryStudent> findPhoneStudentInTemporarygroup(@Param("phone") String PHONE);
	
}
