package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.StudentTrainingTemporary;
import java.lang.String;
import java.util.List;

public interface StudentTrainingTemporaryRepository  extends JpaRepository<StudentTrainingTemporary, Integer> {

	
	 @Query("FROM StudentTrainingTemporary t  where t.phoneNumberStudent = :phone") 
 List<StudentTrainingTemporary> findByPhoneNumberStudent(@Param("phone") String PHONE);
	 
	 

}
