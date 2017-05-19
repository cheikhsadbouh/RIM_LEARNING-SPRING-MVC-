package com.art.consulting.web.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.MultipartFilter;

import com.art.consulting.entities.ConferenceTable;
import com.art.consulting.entities.Groups;
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
	
	    session.setAttribute("listgroup",teachermetier.getTeacherByName( EncryptionUtil.decode(User)).getGroups());
	    logger.info(" welcome teacher  "+ EncryptionUtil.decode(User));
		
		
		
       return "teacher_home_page";
	}
   
	    
	@RequestMapping(value = "/teacher_post/{DATA}/{user}", method = RequestMethod.POST)
	public String teacher_post(@ModelAttribute("DATA")String data ,@ModelAttribute("user")String User)
	
			 throws InstantiationException, IllegalAccessException{
	
	
		Homepage posttble = genericobjmetier.createObj(Homepage.class);
		
		
		
		logger.info("  teacher post  ! "+ data);

String[] sTemp=data.split("msgss");

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
		}else if (data.contains("paymentsss")){
			//payment post
			inputs =sTemp[1];
			String data1[] =inputs.split("titleee");
			String title=data1[0];
	     String data2 [] =data1[1].split("datee");
	     String eventdate=data2[0];
	     String[] daat3 = data2[1].split("typepaymnentee");
	     String eventtype= daat3[0];
	     
	     eventdate =   eventdate.replace("-", "/");
	     eventdate =    eventdate.replace("&", " ");
			 logger.info("data +--->"+inputs);
			// logger.info("title"+title);
			 //logger.info("dat1[1]"+data1[1]);
		 logger.info("title +--->  "+title+" eventdate +-----> "+eventdate+"eventtype +----> "+eventtype);
			posttble.setType_of_post("payment");
			posttble.setTeacher(teachermetier.getTeacherByName(User));
			posttble.setMsg(msg);
			teachermetier.save(posttble);
			
		if(eventtype.equals("conference")){
			logger.info("is  a conference");
			ConferenceTable confrencetble = genericobjmetier.createObj(ConferenceTable.class);
			confrencetble.setPost(posttble);
			confrencetble.setTitle(title);
			confrencetble.setTeacher(teachermetier.getTeacherByName(User));
			confrencetble.setDate(eventdate);
			teachermetier.CreateNewConference(confrencetble);
			
			confrencetble=null;
		}else if(eventtype.equals("visioconference")){
			
			logger.info("is  a visioconference");
		}
			
			
			
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
	
	         
	 


	
	
	
	@RequestMapping(value = "/newgroup", method = RequestMethod.POST)
	@ResponseBody
	public String  teacher_create_new_group(
			@RequestParam("input-file-preview") MultipartFile file
			,@RequestParam("group") String groupname
	       , @RequestParam("profid") String profid
	       ,HttpServletRequest request
			) throws FileNotFoundException , IOException, InstantiationException, IllegalAccessException
	
	{
		
	
		
	      
	       // File f = ResourceUtils.getFile("classpath:src/main/webapp/resources/img-groups/profmath");
	  
	//	    String ApplicationPath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/resources/tata");
		    
		  String path = "/root/git/Rim_Learning(SPRING-MVC)/src/main/webapp/resources/img_groups/"+
			       teachermetier.findTeacherById(Integer.parseInt(profid)).getUsername();
				      
		File f = new File(path);
		    logger.info("path :" +path);
		 
		  if(f.exists()){
			  logger.info("prof already here");
			  File w = new File(path+"/"+groupname);
			  if(w.exists()){
				
				
				  logger.info("group already here !");
				  return "0";
			  }else{
				  boolean  isDirector = (new File(path+"/"+groupname)).mkdirs();
				  if(isDirector){
					  
					  File destination = new File(path+"/"+groupname,file.getOriginalFilename());
					  
					  file.transferTo(destination); 
					  
					Groups grouptable = genericobjmetier.createObj(Groups.class);
					
					grouptable.setGroupName(groupname);
					grouptable.setItemType( teachermetier.findTeacherById(Integer.parseInt(profid)).getItem());
					grouptable.setSection(teachermetier.findTeacherById(Integer.parseInt(profid)).getSection());
					grouptable.setUrlPhoto("/resources/img_groups/"+
							teachermetier.findTeacherById(Integer.parseInt(profid)).getUsername()
							+"/"+groupname+"/"+file.getOriginalFilename());
					                           
					
			ArrayList<Teacher>  list = genericobjmetier.createObj(ArrayList.class);
			list.add(teachermetier.findTeacherById(Integer.parseInt(profid)));
			grouptable.setTeacher(list);
			teachermetier.CreateNewgroup(grouptable);
			
			grouptable=null;
			list=null;
			
			logger.info("new group created !" +destination.getAbsolutePath());
			  return "1";
				  }else{
					  logger.info("prof here but can't create group directory ");
				  }
				  
				
			  }
			  
		  }else{
			  logger.info("new prof ");
			  boolean  isDirectoryCreated = (new File(path)).mkdirs();
		        if (isDirectoryCreated) 
		        {
		        	 logger.info("prof directory created  ");
		        	 
		        	 boolean  isDirector = (new File(path+"/"+groupname)).mkdirs();
		        	 
					  if(isDirector){
						  File destination = new File(path+"/"+groupname,file.getOriginalFilename());
						  
						  file.transferTo(destination); 
						     
						  
						  
							Groups grouptable = genericobjmetier.createObj(Groups.class);
						
							grouptable.setGroupName(groupname);
							grouptable.setItemType( teachermetier.findTeacherById(Integer.parseInt(profid)).getItem());
							grouptable.setSection(teachermetier.findTeacherById(Integer.parseInt(profid)).getSection());
							grouptable.setUrlPhoto("/resources/img_groups/"+
									teachermetier.findTeacherById(Integer.parseInt(profid)).getUsername()
									+"/"+groupname+"/"+file.getOriginalFilename());
							                           
							
					ArrayList<Teacher>  list = genericobjmetier.createObj(ArrayList.class);
					list.add(teachermetier.findTeacherById(Integer.parseInt(profid)));
					grouptable.setTeacher(list);
					teachermetier.CreateNewgroup(grouptable);
					
					grouptable=null;
					list=null;
					  return "1";
					  }else{
						  logger.info("prof here but can't create group directory ");
					  }
					  
					  
		        }else{
		        	 logger.info(" error while create prof directory   ");
		        }
			   
		  }
			 
			   
				  return "error";
			  

	}

}
