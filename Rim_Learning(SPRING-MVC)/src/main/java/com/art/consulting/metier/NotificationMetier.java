package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.Notification;

public interface NotificationMetier {
	
	public void  addnotification(Notification obj);
	
	public List<Notification> getstdnotification(int id );

}
