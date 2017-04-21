package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.Notification;
import com.art.consulting.entities.Student;

public interface NotificationMetier {
	
	public void  addnotification(Notification obj);
	
	public List<Notification> getstdnotification(Student s );

}
