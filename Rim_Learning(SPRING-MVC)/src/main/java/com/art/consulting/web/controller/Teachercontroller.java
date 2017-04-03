package com.art.consulting.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.art.consulting.entities.Teacher;
import com.art.consulting.metier.TeacherMetier;
@Controller
public class Teachercontroller {
	
	
	private static final Logger logger = LoggerFactory.getLogger(Teachercontroller.class);
	
	@Autowired
	private TeacherMetier teachermetier ;
	
	
	



	public void sendMail(Teacher teacher) {
		teachermetier.sendMail(teacher);
	}






	@RequestMapping(value = "/teacher", method = RequestMethod.POST)
	public String signupteacher(@ModelAttribute("teacher")Teacher teacher) {
		
		
		try{
		
			sendMail(teacher);
           
			logger.info(" begin sending teacher mail " );
			
		}catch(Exception e){
			
			
			logger.error(" error while sending teacher mail "+ e.getMessage() );
		}
		
		
       return "home";
	}

}
