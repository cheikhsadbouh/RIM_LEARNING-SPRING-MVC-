package com.art.consulting.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.art.consulting.entities.Student;
import com.art.consulting.metier.StudentMetier;

@Controller
public class Studentcontroller {
	
	private static final Logger logger = LoggerFactory.getLogger(Studentcontroller.class);
	
	@Autowired
	private StudentMetier studentMetier;
	


	public void addStudent(Student student) {
		studentMetier.addStudent(student);
	}
	
	
	@RequestMapping(value = "/student", method = RequestMethod.POST)
	public String signupStudent(@ModelAttribute("student") Student student) {
	
		    try{
		    	 addStudent(student);
				  logger.info("adding student done" );
		    	
		    	
		    }catch(Exception e){
		    	  logger.error("problem with adding student " +e.getMessage());
		    }
		   
		return "home";
		
  
	}
	
	
	
	

}
