package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.StudentConferenceTemporary;


public interface StduentConferenceTemporaryRepository  extends JpaRepository<StudentConferenceTemporary, Integer>  {

	
	
	 @Query("FROM StudentConferenceTemporary t  where t.phoneStudent = :phone") 
	 List<StudentConferenceTemporary> findByPhoneNumberStudentconferencetemporary(@Param("phone") String PHONE);
}
