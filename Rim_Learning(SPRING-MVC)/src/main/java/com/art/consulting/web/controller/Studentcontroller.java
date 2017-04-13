package com.art.consulting.web.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.art.consulting.entities.Student;
import com.art.consulting.metier.StudentMetier;
import com.art.consulting.security.EncryptionUtil;

@Controller
public class Studentcontroller {
	
	private static final Logger logger = LoggerFactory.getLogger(Studentcontroller.class);
	
	@Autowired
	private StudentMetier studentMetier;
	
	@Autowired
	HttpSession session ;

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
		   
		return "after_student_signup";
		
  
	}
	
	
	  String remenber;
	  
	@RequestMapping(value = "/student_home_page/")
	public String StudentHomePage(@RequestParam("user") String User,Model model) {
		
		
		Student s =(Student)studentMetier.findbyname(EncryptionUtil.decode(User));
		
	    session.setAttribute("name", EncryptionUtil.decode(User));
	    session.setAttribute("primary", s.getStudentId());
  		 remenber  =  (String) session.getAttribute("name");
  		session.setAttribute("sec",s.getSection() );
  		
  		// model.addAttribute("U",EncryptionUtil.decode(User) );
  		// model.addAttribute("section",s.getSection() );
  		logger.info("Welcome "+User);
  		logger.info("Welcome "+remenber);
		
        	
	       

		 
	
			
			
	
		
	  
		
		
		
		
		return "student_home_page";
	}
	
	

	@RequestMapping(value = "/cheikh")
	public String Studentlogout() {
	
		
		session.invalidate(); 
		return "redirect:/";
		
		
		
  
	}
	
	
	
	
	
	
	
	

}
