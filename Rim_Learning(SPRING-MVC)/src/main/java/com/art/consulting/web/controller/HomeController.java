package com.art.consulting.web.controller;

import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.art.consulting.entities.ConferenceTable;
import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.StudentConferenceTemporary;
import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.Training;
import com.art.consulting.entities.Video;
import com.art.consulting.metier.GenericOjectMetier;
import com.art.consulting.metier.PostMetier;
import com.art.consulting.metier.StudentMetier;
import com.art.consulting.metier.TeacherMetier;
import com.art.consulting.metier.TrainingMetier;

/**
 * Handles requests for the application home page.
 */
@Controller

public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	private TrainingMetier trainingmetier ;
	
	
	@Autowired
	private PostMetier postmetier ;
	
	@Autowired
	private TeacherMetier teachermetier ;
	
	   

	@Autowired
	private StudentMetier studentMetier;
	
	
	@Autowired
	private GenericOjectMetier  genericobjmetier;
	
	
	
	
	
	
	public GenericOjectMetier getGenericobjmetier() {
		return genericobjmetier;
	}


	
	public void setGenericobjmetier(GenericOjectMetier genericobjmetier) {
		this.genericobjmetier = genericobjmetier;
	}
	


	
	public StudentMetier getStudentMetier() {
		return studentMetier;
	}






	public void setStudentMetier(StudentMetier studentMetier) {
		this.studentMetier = studentMetier;
	}






	public TeacherMetier getTeachermetier() {
		return teachermetier;
	}






	public void setTeachermetier(TeacherMetier teachermetier) {
		this.teachermetier = teachermetier;
	}
	


	public TrainingMetier getTrainingmetier() {
		return trainingmetier;
	}

	public void setTrainingmetier(TrainingMetier trainingmetier) {
		this.trainingmetier = trainingmetier;
	}
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("Welcome home! " );
		
		
		
		return "home";
	}
	@RequestMapping(value = "/clock1")
	public String clock() {
		logger.info("Welcome clock! " );
		
		
		
		
		return "clock1";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login() {
		
		
		logger.info("Welcome login" );
		
		
		
		return "nothing";
	}
	
	
	@RequestMapping(value = "/login_error")
	public String login_error() {
		
		
		logger.info("Welcome login_error");
		
		  
		return "login_error";
	}
	

	
	
	
	
	@RequestMapping(value = "/news/{user}", method = RequestMethod.GET)
	public String news( @ModelAttribute("user") String user, Model model ) {
		
		if(teachermetier.findTeacherById(Integer.valueOf(user))!=null){
			logger.info("is request from teacher");
			 model.addAttribute("imguser",teachermetier.findTeacherById(Integer.valueOf(user)).getUrlPhoto());
		}else{
			logger.info("is request from std");
			 model.addAttribute("imguser",studentMetier.findone(Integer.valueOf(user)).getUrlPhoto());
		}
		
		logger.info("Welcome  to news  user : "+user);
		
		 
		
		List<Homepage> listpost =postmetier.getAllPost();
				Collections.reverse(listpost);
		 model.addAttribute("userid",  user);
		 model.addAttribute("lstpost",listpost);
		 model.addAttribute("lstprof", teachermetier.findAll());
		 model.addAttribute("lstconference", teachermetier.findallconference());
		
		return "post_page";
	}
	
	
	
	
	
	
	
	
	
	
	
	

	

	@RequestMapping(value = "/cours")
	public String cours( Model model) {
		
		
		logger.info("Welcome cours");
		List<Training> list = trainingmetier.findAll();
	   model.addAttribute("list",  list );
	   
	
		return "cours";
	}
	
	
	
   
	@RequestMapping(value = "/trainingrequest", method = RequestMethod.POST)
	@ResponseBody
	public void  askForTraining
	        (
			 @RequestParam("PRICE") String PRICE
			,@RequestParam("TRAININGID") String TRAININGID
			,@RequestParam("USER") String USER
			,@RequestParam("phone_user") String phone_user
			, @ModelAttribute("student") StudentTrainingTemporary trainingtable
			) {  
		 
//logger.info(PRICE);
//		
//		logger.info(TRAININGID);
//		logger.info(PRIMARY);
//		logger.info(phone_user);   
		 
			trainingtable.setUser(USER);
			trainingtable.setIdTraining(TRAININGID);
			trainingtable.setPhoneNumberStudent(phone_user);
			trainingtable.setPriceTraining(PRICE);	
    
    
            trainingmetier.newTrainingRequrst(trainingtable);
		
		 
		
		
		   
		logger.info("ask for training done ");
		
		
	
		
		
	}
	
	
	
	
	@RequestMapping(value = "/stdconferencetemporarystd", method = RequestMethod.POST)
	@ResponseBody
	public void stdconferencetemposrarystd( 
			
			 @RequestParam("PRICE") String PRICE
				,@RequestParam("conferenceid") String conferenceid
				,@RequestParam("PRIMARY") String USER
				,@RequestParam("phone_user") String phone_user
			) throws InstantiationException, IllegalAccessException {
		
		
		
StudentConferenceTemporary stdtemporaryconference = genericobjmetier.createObj(StudentConferenceTemporary.class);
		
stdtemporaryconference.setPhoneStudent(phone_user);
stdtemporaryconference.setPrice(PRICE);
stdtemporaryconference.setTempstudent(studentMetier.findone(Integer.parseInt(USER)));
stdtemporaryconference.setConference(teachermetier.findconference(Integer.parseInt(conferenceid)));

teachermetier.addstdtotemporaryconference(stdtemporaryconference);

stdtemporaryconference=null;

		logger.info("price   "+PRICE+"  conf id "+conferenceid+" user "+ USER+"  phone "+phone_user);
		logger.info("add new std  to stdconferencetemporarystd !");
	
	
		;
	}

	
	
	
	
	
	
	
	

	static int a =1 ;
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String test1(Model model) {
		
		
		model.addAttribute("a",a);
		logger.info("a :"+a);
		a++;
		return "test1";
	}
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2() {
		
		
		
		return "test2";
	}
	
	
	
	
	
}
