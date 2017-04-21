package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.Notification;
import com.art.consulting.entities.Student;


public interface NotificationRepository  extends JpaRepository<Notification, Integer>{

	
	 @Query("FROM Notification t  where t.studentId = :id") 
	    public  List<Notification> getstdnotification(@Param("id") Student s);

	
	
}
