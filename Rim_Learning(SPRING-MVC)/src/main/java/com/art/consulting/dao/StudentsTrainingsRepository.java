package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.StudentsTrainings;
import java.lang.String;
import java.util.List;

public interface StudentsTrainingsRepository  extends JpaRepository<StudentsTrainings, Integer>{

	
	 @Query("FROM StudentsTrainings t  where t.user = :user")
	 public List<StudentsTrainings> findByUsername(@Param("user") String user);
}
