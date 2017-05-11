package com.art.consulting.web.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.art.consulting.entities.Student;
import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.StudentsTrainings;
import com.art.consulting.entities.Training;
import com.art.consulting.entities.VoteContent;
import com.art.consulting.entities.VoteResult;
import com.art.consulting.metier.GenericOjectMetier;
import com.art.consulting.metier.PostMetier;
import com.art.consulting.metier.StudentMetier;
import com.art.consulting.metier.TrainingMetier;
import com.art.consulting.security.EncryptionUtil;

@Controller
public class Studentcontroller {
	
	private static final Logger logger = LoggerFactory.getLogger(Studentcontroller.class);
	
	@Autowired
	private StudentMetier studentMetier;
	
	@Autowired
	HttpSession session ;
	
	@Autowired
	private TrainingMetier trainingmetier ;
	
	@Autowired
	private PostMetier postmetier ;
	
	@Autowired
	private GenericOjectMetier  genericobjmetier;
	
	
	
	
	
	
	public GenericOjectMetier getGenericobjmetier() {
		return genericobjmetier;
	}


	
	public void setGenericobjmetier(GenericOjectMetier genericobjmetier) {
		this.genericobjmetier = genericobjmetier;
	}

	public PostMetier getPostmetier() {
		return postmetier;
	}


	public void setPostmetier(PostMetier postmetier) {
		this.postmetier = postmetier;
	}


	public TrainingMetier getTrainingmetier() {
		return trainingmetier;
	}


	public void setTrainingmetier(TrainingMetier trainingmetier) {
		this.trainingmetier = trainingmetier;
	}


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
		
		String Sectionc []={"science","mathematique","physique","français","arabe","anglais"};
		String SectionD []={"science","mathematique","physique","français","arabe","anglais"};
		String Sectiona []={};
		String Sectiono []={};
		
		
		
		Student s =(Student)studentMetier.findbyname(EncryptionUtil.decode(User));
		
	    session.setAttribute("name", EncryptionUtil.decode(User));
	    session.setAttribute("primary", s.getStudentId());
  		remenber  =  (String) session.getAttribute("name");
  		session.setAttribute("sec",s.getSection() );
  		session.setAttribute("img",s.getUrlPhoto() );
  		switch (s.getSection()){
  			case "section_C":{  model.addAttribute("itemtsype", Sectionc); break ; }
  			case "section_D":{  model.addAttribute("itemtsype", SectionD); break ; }
  			case "section_A":{   model.addAttribute("itemtsype", Sectiona); break ; }
  			case "section_O":{   model.addAttribute("itemtsype", Sectiono); break ; }
  			
  		}
  		 model.addAttribute("listofgroups",studentMetier.findallgroups());
  		model.addAttribute("mygroups",studentMetier.findmygroups(s.getStudentId()));
  		// model.addAttribute("U",EncryptionUtil.decode(User) );
  		// model.addAttribute("section",s.getSection() );
  		logger.info("Welcome "+User);
  		logger.info("Welcome "+remenber);
		
  		logger.info("section  : "+s.getSection());
	       

		 
	
			
			
	
		
	  
		
		
		
		
		return "student_home_page";
	}
	
	

	@RequestMapping(value = "/cheikh")
	public String Studentlogout() {
	
		
		session.invalidate(); 
		return "redirect:/";
		
		
		
  
	}
	
	
	@RequestMapping(value = "/playlist/{id}")
	public String Studentplaylist(@ModelAttribute("id") String idtraining, Model model ) {
	
		logger.info("id training :"+idtraining);
		 
		 Training playlist= trainingmetier.findone(Integer.valueOf(idtraining));
		 model.addAttribute("playlist",  playlist.getVideo() );
		
		
		return "playlistvideo";
		
		
		
  
	}
	@RequestMapping(value = "/mycourses/{user}")
	public String mycourseslist(@ModelAttribute("user") String user , Model model ) {
	
		
		
		 
		 List<String> timing = new ArrayList<String>();
		
		Student std =   studentMetier.findbyname(user);
		
		
		
		 List <StudentsTrainings> listtrainings =trainingmetier.findByUsernameInDuplicatedTrainings(user);
		 Iterator  itr = listtrainings.iterator();
		   while(itr.hasNext()){
			   
			   
			   StudentsTrainings   training = (StudentsTrainings) itr.next();
			   
			   
			   Integer [] date=trainingmetier.getdatedefference(training.getExpired_data());
			      
			   logger.info("if date []");
			if(date[0]< 0 || date[1] < 0|| date[2] < 0|| date[3] < 0){
				logger.info("d5al v date negative ");     
				logger.info("date[0]"+date[0]);
				logger.info("date[1]"+date[1]);
				logger.info("date[2]"+date[2]);
				logger.info("date[3]"+date[3]);
				logger.info("date[4]"+date[4]);
				
				trainingmetier.deletefromduplicatedtraings(Integer.valueOf(training.getId()));
		     
				
				 List<Training> lst = studentMetier.findbyname(user).getTraining();
				  Iterator i =   lst.iterator();
				   
				  logger.info("list size before ---->"+lst.size());
				  logger.info("id std traingsduplicated :"+training.getIdTraining());
			      while(i.hasNext()){
			    	  Training traininng = (Training) i.next();
			    	 
			    	logger.info("id trainig iterator :"+traininng.getIdTraining());
			    	  
			    	 logger.info("id trainingstable :"+training.getIdTraining());
			    	   if(training.getIdTraining().equals(Integer.toString(traininng.getIdTraining())) ){
			    		   
			    		   logger.info("is equas ");
			    		    
			    		    	  i.remove();
			    		    	  logger.info(" break section ! ");
			    		           break;
			    		           
			    		   
			    		   
			    	   }
			    	      
			    	   
			    	 
			      }
			      
                   std.setTraining(lst);
                   logger.info("list size after ---->"+lst.size());
                   logger.info("set std list done ! ");
	    		   studentMetier.addStudent(std);
	    		   logger.info("update list std  done ! ");
		    
		    
		    
			}else{
				//String s =  Arrays.toString(date);
				timing.add(training.getExpired_data());
				
				  logger.info(" else section  ");
				  
		
				  
				  
			
				
			}
			   
			    
		   }  
		   
		/*  List<Training> lss = studentMetier.findbyname(user).getTraining();
		   lss.clear();
		   std.setTraining(lss);
		   studentMetier.addStudent(std);*/
		
		   model.addAttribute("usertrainings", studentMetier.findbyname(user).getTraining() );
		 model.addAttribute("listtiming", timing );
		logger.info("get user  :"+user+" trainings");
		logger.info("get user  :"+std.getUsername()+" trainings");
		 
		return "mycourses";
		
		
		
  
	}
	
	@RequestMapping(value = "/studentvote/{idvote}/{idstd}")
	@ResponseBody
	public String Studentvote(@ModelAttribute("idvote") String idvote , 
			@ModelAttribute("idstd") String idstd) throws InstantiationException, IllegalAccessException 
	{
		boolean c =false ;
		int result =0;
		 List<VoteResult> vote = postmetier.getAllvoteresult();
		 Iterator i = vote.iterator();
		 
	VoteResult tbvoteresult = genericobjmetier.createObj(VoteResult.class);
	
	
		 
		 if(vote.isEmpty()){
			 logger.info("list is empty !");
			 c = true ;
			 if(studentMetier.findone(Integer.parseInt(idstd))!=null){
				 logger.info("is a student request !");
				 tbvoteresult.setStudent(studentMetier.findone(Integer.parseInt(idstd)));
				 tbvoteresult.setVotecontent(postmetier.findvotebyid(Integer.parseInt(idvote)));
				
				 postmetier.saveVoteResult(tbvoteresult);
		
				VoteContent objvotecontent = postmetier.findvotebyid(Integer.parseInt(idvote));
			   
				 result =objvotecontent.getResult() +1 ;
				
				objvotecontent.setResult(result);
				
				postmetier.UpdateVoteContentResult(objvotecontent);
				 
			 }// end verification is a student request 
			
		 }else{
			 
			 logger.info("list is not  empty   !");
			 String stdfrmdb ="";
			 String voteidfrmdb="";
			 while(i.hasNext()){
				 VoteResult obj =(VoteResult) i.next();
				 stdfrmdb= Integer.toString(obj.getStudent().getStudentId());
					voteidfrmdb= Integer.toString(obj.getVotecontent().getId_vote_content());
				 logger.info("stdid param  : "+idstd+" idstd  from db : "+obj.getStudent().getStudentId());
					logger.info("idvote param : "+idvote+"idvote from db : "+obj.getVotecontent().getId_vote_content());
				
					
					if( voteidfrmdb.equals(idvote)  && idstd.equals(stdfrmdb)){
					
					
					logger.info("already voted to this choice !");
					
					c = true ;
					break;
					
				
				}
			 }//end while
			 
			 
		 }//end else 
		 
		 if(c!=true){
			 
			 logger.info("is new  vote !");
			
			 logger.info("idstd : "+studentMetier.findone(Integer.parseInt(idstd)));
			
			 logger.info("idvotecontent :"+postmetier.findvotebyid(Integer.parseInt(idvote)));
			
			 if(studentMetier.findone(Integer.parseInt(idstd))!=null){
				 logger.info("is a student request !");
				 tbvoteresult.setStudent(studentMetier.findone(Integer.parseInt(idstd)));
				 tbvoteresult.setVotecontent(postmetier.findvotebyid(Integer.parseInt(idvote)));
				
				 postmetier.saveVoteResult(tbvoteresult);
		
				VoteContent objvotecontent = postmetier.findvotebyid(Integer.parseInt(idvote));
			   
				 result =objvotecontent.getResult() +1 ;
				
				objvotecontent.setResult(result);
				
				postmetier.UpdateVoteContentResult(objvotecontent);
				 
			 }// end verification is a student request 
			 
			 
		 }//end add new vote
		 
		 tbvoteresult= null;
		 
	
		
       logger.info("idvote :"+idvote);
       logger.info("idstd :"+idstd);
		   
		
		
	
	     return ""+postmetier.findvotebyid(Integer.parseInt(idvote)).getResult();
	}
	
	
	
	
	
	

}
