package com.art.consulting.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.Teacher;
import com.art.consulting.entities.VoteContent;
import com.art.consulting.metier.GenericOjectMetier;
import com.art.consulting.metier.TeacherMetier;
import com.art.consulting.security.EncryptionUtil;
@Controller
public class Teachercontroller {
	
	
	private static final Logger logger = LoggerFactory.getLogger(Teachercontroller.class);
	
	@Autowired
	HttpSession session ;
	
	@Autowired
	private TeacherMetier teachermetier ;
	
	@Autowired
	private GenericOjectMetier  genericobjmetier;
	
	
	
	
	
	
	public GenericOjectMetier getGenericobjmetier() {
		return genericobjmetier;
	}


	
	public void setGenericobjmetier(GenericOjectMetier genericobjmetier) {
		this.genericobjmetier = genericobjmetier;
	}



	public TeacherMetier getTeachermetier() {
		return teachermetier;
	}






	public void setTeachermetier(TeacherMetier teachermetier) {
		this.teachermetier = teachermetier;
	}



	


	 







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
		
		
       return "after_teacher_signup";
	}

	@RequestMapping(value = "/teacher_home")
	public String teacher_home_page(@RequestParam("user") String User) {
		
	    session.setAttribute("name", EncryptionUtil.decode(User));
	   session.setAttribute("primary",teachermetier.getTeacherByName( EncryptionUtil.decode(User)).getTeacherId());
	    session.setAttribute("sec",teachermetier.getTeacherByName( EncryptionUtil.decode(User)).getSection() );
		
	    
	    session.setAttribute("img",teachermetier.getTeacherByName( EncryptionUtil.decode(User)).getUrlPhoto() );
		logger.info(" welcome teacher  "+ EncryptionUtil.decode(User));
		
		
		
       return "teacher_home_page";
	}
   
	    
	@RequestMapping(value = "/teacher_post/{DATA}/{user}", method = RequestMethod.POST)
	public String teacher_post(@ModelAttribute("DATA")String data ,@ModelAttribute("user")String User)
	
			 throws InstantiationException, IllegalAccessException{
	
	
		Homepage posttble = genericobjmetier.createObj(Homepage.class);
		
		
		
		logger.info("  teacher post  ! "+ data);

String[] sTemp=data.split("msg");

 String msg  =sTemp[0];
 String inputs="";
		if(data.contains("input")){
			// vote post
			
			
			posttble.setType_of_post("vote");
			posttble.setTeacher(teachermetier.getTeacherByName(User));
			posttble.setMsg(msg);
			teachermetier.save(posttble);
			int id =posttble.getIdHomePage();
		
			inputs =sTemp[1];
			String[] d= inputs.split("input");
			for(int i=0 ;i<d.length;i++){
				VoteContent votetable = genericobjmetier.createObj(VoteContent.class);
				votetable.setPost(posttble);
				votetable.setVote_content(d[i]);
				teachermetier.SaveVote(votetable);
				votetable=null;
			}
			posttble=null;
		}else if (data.contains("payment")){
			//payment post
			posttble.setType_of_post("payment");
			posttble.setTeacher(teachermetier.getTeacherByName(User));
			posttble.setMsg(msg);
			teachermetier.save(posttble);
			posttble=null;
		}else{
			
			//simple post
			posttble.setType_of_post("simple");
			posttble.setTeacher(teachermetier.getTeacherByName(User));
			posttble.setMsg(msg);
			teachermetier.save(posttble);
			posttble=null;
		}
		
		
		
		

		
		logger.info("  teacher post done   ! ");
		
		
		
		
       return "teacher_home_page";
	}
	
	
	

}
