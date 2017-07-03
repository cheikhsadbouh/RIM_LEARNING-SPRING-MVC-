package com.art.consulting.web.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.art.consulting.entities.JoinedGroupStudent;
import com.art.consulting.metier.GenericOjectMetier;
import com.art.consulting.metier.StudentMetier;


public class test {
	private static final Logger logger = LoggerFactory.getLogger(test.class);

	@Autowired
	private  static StudentMetier studentMetier;
	@Autowired
	private  static GenericOjectMetier  genericobjmetier;
	
	public static void main(String[] args) throws InstantiationException, IllegalAccessException {
	///Rim_Learning(SPRING-MVC)
		 
		/*
		 String path = "./src/main/webapp/resources/img_groups/profmath/rt3ererr";
			    
		File f = new File(path);
		   
		 
		  if(f.exists()){
			  logger.info("path  main :" +f.getAbsolutePath());
			  
		  }else{
			 boolean   isDirector = (new File(path+"/"+"ff")).mkdirs();
			  logger.info("walo !");
		  }
		  */
		  
		//  logger.info("string[0] :"+args[0]);
		//  logger.info("string[1] :"+args[1]);
		  
	}
	
	/*public static  void crtfile(){
		 String path = "./src/main/webapp/resources/img_groups/profmath/math90";
		    
			File f = new File(path);
			   
			 
			  if(f.exists()){
				  logger.info("path  main :" +f.getAbsolutePath());
				  
			  }else{
				 boolean   isDirector = (new File(path+"/"+"fkkkkk")).mkdirs();
				  logger.info("walo !");
			  }
		  logger.info("from fnct !");
	}
*/
}
