package com.art.consulting.web.controller;

import java.text.DateFormat;
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

import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.Training;
import com.art.consulting.entities.Video;
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
	

	
	
	
	
	@RequestMapping(value = "/news")
	public String test7() {
		
		
		logger.info("Welcome news");
		
		
		
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
	
}
