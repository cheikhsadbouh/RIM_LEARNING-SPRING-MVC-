package com.art.consulting.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.art.consulting.metier.NotificationMetier;

@Controller
public class NotificationController {

	private static final Logger logger = LoggerFactory.getLogger(NotificationController.class);
	
	@Autowired
	 private NotificationMetier notificationMetier ;
	
	
	public NotificationMetier getNotificationMetier() {
		return notificationMetier;
	}


	public void setNotificationMetier(NotificationMetier notificationMetier) {
		this.notificationMetier = notificationMetier;
	}


	@RequestMapping(value = "/notificationstudent/{id}", method = RequestMethod.GET)
	public String getstudentnotification(@ModelAttribute("id") String idstd, Model model) {
		
		logger.info("Welcome std notification! " +idstd);
		
		
		
		return "studentnotification";
	}
	
}
