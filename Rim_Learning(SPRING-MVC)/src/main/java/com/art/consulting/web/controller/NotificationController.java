package com.art.consulting.web.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.art.consulting.entities.Notification;
import com.art.consulting.metier.NotificationMetier;
import com.art.consulting.metier.StudentMetier;

@Controller
public class NotificationController {

	private static final Logger logger = LoggerFactory.getLogger(NotificationController.class);
	
	@Autowired
	 private NotificationMetier notificationMetier ;
	
	@Autowired
	private StudentMetier studentMetier;
	
	
	public StudentMetier getStudentMetier() {
		return studentMetier;
	}


	public void setStudentMetier(StudentMetier studentMetier) {
		this.studentMetier = studentMetier;
	}


	public NotificationMetier getNotificationMetier() {
		return notificationMetier;
	}


	public void setNotificationMetier(NotificationMetier notificationMetier) {
		this.notificationMetier = notificationMetier;
	}


	@RequestMapping(value = "/notificationstudent/{user}", method = RequestMethod.GET)
	public String getstudentnotification(@ModelAttribute("user") String user, Model model) {
		
		logger.info("Welcome std notification! " +user);
		
		List<Notification> notseen = new ArrayList<Notification>();   
		List<Notification> seen = new ArrayList<Notification>();
		
		 List<Notification> notiflist = notificationMetier.getstdnotification(studentMetier.findbyname(user));
		
				 
		 
		  Iterator<Notification> i = notiflist.iterator();
		  while(i.hasNext()){
			  Notification objnotif =(Notification)  i.next();
			  
			    if(objnotif.getState().equals("not_seen")){
			    	
			    
			    	notseen.add(objnotif);
			    	
			    	objnotif.setState("seen");
			    	
			    	notificationMetier.addnotification(objnotif);
			    	
			    	
			      }else{
				  
				  seen.add(objnotif);
				 
			  }
			  
		  }
				 
		    Collections.reverse(seen);
		 model.addAttribute("notseen",notseen);
		 model.addAttribute("seen",seen);
		
		return "studentnotification";
	}
	
}
