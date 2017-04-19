package com.art.consulting.Service;



import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.art.consulting.entities.Student;
import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.Training;
import com.art.consulting.metier.StudentMetier;
import com.art.consulting.metier.TrainingMetier;








@Path("/api")
@Component
public class SmsService {  
	
	private static final Logger logger = LoggerFactory.getLogger(SmsService.class);

	 public SmsService(){
		 
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	 }
	 
	
	@Autowired
	
	private TrainingMetier Imetier ;
	
	   
	@Autowired
	
	private StudentMetier studentMetier;  
	
	
	 private StudentTrainingTemporary tablerow;
	
	private List<StudentTrainingTemporary> studentinfo ;
	
	
	 

	 private List<Training> list= new ArrayList<>();
	
	 
	 
	 
	 private  Training training;
	
	
	
	 
	 
	 
	 public List<Training> getList() {
		return list;
	}



	 
	public void setList(List<Training> list) {
		this.list =  list;
	}



 



	public StudentMetier getStudentMetier() {
		return studentMetier;
	}




	public void setStudentMetier(StudentMetier studentMetier) {
		this.studentMetier = studentMetier;
	}




	



	@Autowired(required=true)
	public StudentTrainingTemporary getTablerow() {
		return tablerow;
	}



	
	public void setTablerow(StudentTrainingTemporary tablerow) {
		this.tablerow = tablerow;
	}




	public TrainingMetier getImetier() {
		return Imetier;
	}



	
	public void setImetier(TrainingMetier imetier) {
		Imetier = imetier;
	}



	 
	public List<StudentTrainingTemporary> getStudentinfo() {
		return studentinfo;
	}




	public void setStudentinfo(List<StudentTrainingTemporary> studentinfo) {
		this.studentinfo = studentinfo;
	}        

   
	

	@GET
	@Path("/get/{id}/{body}")
	@Produces("text/html")
	public String getStartingPage(@PathParam("id") String id ,@PathParam("body") String bodymsg)
	{
		logger.info("phone :"+id);
		logger.info("body:"+ bodymsg);
		
		
	
		
	   studentinfo =   Imetier.findByPhoneNumberStudent(id);
	   Iterator  itr = studentinfo.iterator();
	   while(itr.hasNext()){
			
			 tablerow = (StudentTrainingTemporary) itr.next();
			 if(tablerow.getPhoneNumberStudent().equals(id)){
				 
		    logger.info(tablerow.getUser());
			logger.info(tablerow.getIdTraining());
				
				 Student std =	studentMetier.findbyname(tablerow.getUser());
				  
				 String  a="com.art.consulting.entities.Training";
				
				 try {
					 training = (Training) Class.forName(a).newInstance();
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InstantiationException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
		   
				
				
					training.setIdTraining(Integer.valueOf(tablerow.getIdTraining()));
					
						      
				
							 
							list=std.getTraining(); 
							list.add(training); 
				           std.setTraining(list);
							studentMetier.addStudent(std);
							
							Imetier.delete(tablerow.getId());
							
						 logger.info("adding traing  to student done ! ");
					
				
			
				 
			 }
			
		   
		  }
	
	
	logger.info("phone number : "+id);
		
		return id;
	}
	
	
	
	
	@POST
	@Path("/post")
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.TEXT_PLAIN)
	public String postdata(){
		
		return "dataposted";
	}

}
