package com.art.consulting.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.NotificationRepository;
import com.art.consulting.entities.Notification;
import com.art.consulting.entities.Student;
@Service
public  class NotificationMetierImpl  implements NotificationMetier{

	
	
	@Autowired
	 private NotificationRepository repo ;
	
	
	public NotificationRepository getRepo() {
		return repo;
	}

	public void setRepo(NotificationRepository repo) {
		this.repo = repo;
	}

	@Override
	public void addnotification(Notification obj) {
		
		repo.save(obj);
	}

	@Override
	public List<Notification> getstdnotification( Student s  ) {
	
		return repo.getstdnotification(s);
	}

}
