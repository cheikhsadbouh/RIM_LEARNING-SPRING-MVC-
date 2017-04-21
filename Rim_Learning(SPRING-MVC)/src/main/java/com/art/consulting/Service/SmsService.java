package com.art.consulting.Service;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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

import com.art.consulting.entities.Notification;
import com.art.consulting.entities.Student;
import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.StudentsTrainings;
import com.art.consulting.entities.Training;
import com.art.consulting.metier.NotificationMetier;
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
	

	
	
	private Notification  notificationtb;
	   
	@Autowired
	
	private StudentMetier studentMetier;  
	
	
	 private StudentTrainingTemporary temporaryStudent;
	
	private List<StudentTrainingTemporary> listStudent ;
	
	@Autowired
	
	 private StudentsTrainings  duplicatedtable  ;
	 

	 private List<Training> list= new ArrayList<>();
	
	 
	 
	 
	 private  Training training;
	
	
	 
	 @Autowired  
	 private NotificationMetier notificationMetier ;
	
	  
	public NotificationMetier getNotificationMetier() {
		return notificationMetier;
	}

	
	public void setNotificationMetier(NotificationMetier notificationMetier) {
		this.notificationMetier = notificationMetier;
	}
	
	 
	 
	 
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




	



	
	




	public TrainingMetier getImetier() {
		return Imetier;
	}



	@Autowired(required=true)
	public StudentTrainingTemporary getTemporaryStudent() {
		return temporaryStudent;
	}




	public void setTemporaryStudent(StudentTrainingTemporary temporaryStudent) {
		this.temporaryStudent = temporaryStudent;
	}




	public void setImetier(TrainingMetier imetier) {
		Imetier = imetier;
	}



	 
	

   
	

	public List<StudentTrainingTemporary> getListStudent() {
		return listStudent;
	}




	public void setListStudent(List<StudentTrainingTemporary> listStudent) {
		this.listStudent = listStudent;
	}




	public Training getTraining() {
		return training;
	}




	public void setTraining(Training training) {
		this.training = training;
	}

	 


	
	public StudentsTrainings getDuplicatedtable() {
		return duplicatedtable;
	}




	public void setDuplicatedtable(StudentsTrainings duplicatedtable) {
		this.duplicatedtable = duplicatedtable;
	}




	public Notification getNotificationtb() {
		return notificationtb;
	}


	public void setNotificationtb(Notification notificationtb) {
		this.notificationtb = notificationtb;
	}


	@GET
	@Path("/get/{id}/{body}")
	@Produces("text/html")
	public String getStartingPage(@PathParam("id") String id ,@PathParam("body") String bodymsg)
	{
		logger.info("phone :"+id);
		logger.info("body:"+ bodymsg);
		
	
		
	   listStudent =   Imetier.findByPhoneNumberStudent(id);
	   Iterator  itr = listStudent.iterator();
	   while(itr.hasNext()){
			
			 temporaryStudent = (StudentTrainingTemporary) itr.next();
			 if(temporaryStudent.getPriceTraining().equals(bodymsg)){
				 
		    logger.info("user from temporary "+temporaryStudent.getUser());
			logger.info("ud train :"+temporaryStudent.getIdTraining());
			logger.info("phione :"+temporaryStudent.getPhoneNumberStudent());
			logger.info("price :"+temporaryStudent.getPriceTraining());
				
				 Student std =	studentMetier.findbyname(temporaryStudent.getUser());
				             
				 String  a="com.art.consulting.entities.Training";
				 String b="com.art.consulting.entities.Notification";
				
				 try {
					 training = (Training) Class.forName(a).newInstance();
					 notificationtb= (Notification) Class.forName(b).newInstance();
					
				} catch (ClassNotFoundException e) {
					logger.error(e.getMessage());
					      
				} catch (InstantiationException e) {
					logger.error(e.getMessage());
				} catch (IllegalAccessException e) {
					logger.error(e.getMessage());
				}
				 
		   
				
				
					training.setIdTraining(Integer.valueOf(temporaryStudent.getIdTraining()));
					
						      
				
							 
							list=std.getTraining(); //get all student trainings
							
							list.add(training);  //all trainings + new training
							
				           std.setTraining(list);// update trainings
							studentMetier.addStudent(std);// update std

							StudentsTrainings r = new StudentsTrainings();
							r.setIdTraining(temporaryStudent.getIdTraining());
							r.setUser(temporaryStudent.getUser());
							r.setExpired_data(Imetier.getTimeafterOneMonth());
							
							
							
							
							Imetier.addInDuplicatedTrainings(r);//save obj
							
							
							Imetier.delete(temporaryStudent.getId()); // delete from temporarytable student 
							
							
							
						 logger.info("adding traing  to student done ! ");
						 
					//	 notificationMetier
					if(notificationtb !=null){
				 		logger.info("notification table here ");
					}
					if(notificationMetier != null){
						logger.info("notification interface  table here ");
					}
						 notificationtb.setStudentId(std);
						 notificationtb.setValue("new training  "
						 +Imetier.gettrainingname(training.getIdTraining()).getName()
						 +"  valable jusqua'a  "+Imetier.getTimeafterOneMonth());
						 notificationtb.setState("not_seen");
	                   	notificationtb.setDatenotification(new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(Calendar.getInstance().getTime()).toString());
	                   	notificationMetier.addnotification(notificationtb);
	                   	
	                   	break;
			 }
			
		   
		  }
	
	
	logger.info("phone number : "+id);
		
		return id;
	}
	
	
	
	
	@POST
	@Path("/post")
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.TEXT_PLAIN)
	public String payment(){
		
		return "dataposted";
	}

}
