package com.art.consulting.metier;

import com.art.consulting.dao.ConferenceJoinedStudentRepository;
import com.art.consulting.dao.ConferenceRepository;
import com.art.consulting.dao.GroupRepository;
import com.art.consulting.dao.GroupsPostsRepository;
import com.art.consulting.dao.HomePageRepository;
import com.art.consulting.dao.StduentConferenceTemporaryRepository;
import com.art.consulting.dao.TeacherRepository;
import com.art.consulting.dao.VoteContentRepository;
import com.art.consulting.entities.ConferenceJoinedStudent;
import com.art.consulting.entities.ConferenceTable;
import com.art.consulting.entities.Groups;
import com.art.consulting.entities.GroupsPosts;
import com.art.consulting.entities.GroupsPostsTemporary;
import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.StudentConferenceTemporary;
import com.art.consulting.entities.Teacher;
import com.art.consulting.entities.VoteContent;

import java.util.List;
import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;

import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;  
@Service
public class TeacherMetierImpl  implements TeacherMetier{
	private static final Logger logger = LoggerFactory.getLogger(TeacherMetierImpl.class);

	
	@Autowired
	private HomePageRepository homepagerepository;
	
	@Autowired
	private TeacherRepository teacherrepository ;
	@Autowired
	 private VoteContentRepository voterepository ;
	
	@Autowired
	private ConferenceRepository conferencerepository ;
	
	@Autowired
    private StduentConferenceTemporaryRepository  stdconferencetemporaryrepository ;

	@Autowired
	private ConferenceJoinedStudentRepository conferencejoinerepository;
	
	@Autowired
	private GroupRepository grouprepository ;
	
	@Autowired
	private GroupsPostsRepository groups_posts ;
	public GroupsPostsRepository getGroups_posts() {
		return groups_posts;
	}

	public void setGroups_posts(GroupsPostsRepository groups_posts) {
		this.groups_posts = groups_posts;
	}

	public GroupRepository getGrouprepository() {
		return grouprepository;
	}

	public void setGrouprepository(GroupRepository grouprepository) {
		this.grouprepository = grouprepository;
	}

	public ConferenceJoinedStudentRepository getConferencejoinerepository() {
		return conferencejoinerepository;
	}

	public void setConferencejoinerepository(ConferenceJoinedStudentRepository conferencejoinerepository) {
		this.conferencejoinerepository = conferencejoinerepository;
	}

	public StduentConferenceTemporaryRepository getStdconferencetemporaryrepository() {
		return stdconferencetemporaryrepository;
	}

	public void setStdconferencetemporaryrepository(StduentConferenceTemporaryRepository stdconferencetemporaryrepository) {
		this.stdconferencetemporaryrepository = stdconferencetemporaryrepository;
	}

	public ConferenceRepository getConferencerepository() {
		return conferencerepository;
	}

	public void setConferencerepository(ConferenceRepository conferencerepository) {
		this.conferencerepository = conferencerepository;
	}

	public VoteContentRepository getVoterepository() {
		return voterepository;
	}

	public void setVoterepository(VoteContentRepository voterepository) {
		this.voterepository = voterepository;
	}

	public TeacherRepository getTeacherrepository() {
		return teacherrepository;
	}

	public void setTeacherrepository(TeacherRepository teacherrepository) {
		this.teacherrepository = teacherrepository;
	}

	public HomePageRepository getHomepagerepository() {
		return homepagerepository;
	}

	public void setHomepagerepository(HomePageRepository homepagerepository) {
		this.homepagerepository = homepagerepository;
	}

	@Override
	public void sendMail(Teacher teacher) {
		
		final String from= "cheikhsaadbouh24@gmail.com";
		final String rimlearning="rimlearning@gmail.com";
		
		/*
		 * email=rimlearning@gmail.com
		 * pass=rimlearning2017
		 * 
		 * */
		
		  Properties props = new Properties();    
          props.put("mail.smtp.host", "smtp.gmail.com");    
            

          
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "587"); 
          props.put("mail.smtp.starttls.enable", "true");
          
          //get Session   
          Session session = Session.getInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(from,"kxonmahplkbxmkhp");  
           }    
          });    
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session);  
           message.setFrom(new InternetAddress(from));
           message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(rimlearning));    
           message.setSubject("demande d'inscription ");    
           message.setText(
        
       
        		   "firstname : "+teacher.getFirstName()+"\n"
        		   +"lastname : "+teacher.getLastName()+"\n"
        		   +"email : "+teacher.getEmail()+"\n"
        		   +"item : "+teacher.getItem()+"\n"
        		   +"section :"+teacher.getSection()+"\n"
        		   +"phoneNumber :"+teacher.getPoneNumber()
        		   
        		   
        		   );  
          
           
           
           //send message  
           Transport.send(message);    
          
           	logger.info("email  sent successfully" );
          } catch (MessagingException e) {
        	  
        	 
          
       	   logger.error(" error while sending email  sent " +e.getStackTrace());
          }    
             
		
	}

	@Override
	public void save(Homepage post) {
		
		homepagerepository.save(post);
		
	}

	@Override
	public Teacher getTeacherByName(String name) {
		
		return teacherrepository.findTeacherByUsername(name);
	}

	@Override
	public List<Teacher> findAll() {
		
		return teacherrepository.findAll();
	}

	@Override
	public void SaveVote(VoteContent obj) {
		
		voterepository.save(obj);
		
	}

	@Override
	public Teacher findTeacherById(int id) {
		
		return teacherrepository.findOne(id);
	}

	@Override
	public void CreateNewConference(ConferenceTable obj) {
		
		conferencerepository.save(obj);
	}

	@Override
	public List<ConferenceTable> findallconference() {
	
		return conferencerepository.findAll();
	}

	@Override
	public void addstdtotemporaryconference(StudentConferenceTemporary obj) {
		
		stdconferencetemporaryrepository.save(obj);
		
	}

	@Override
	public ConferenceTable findconference(int id) {
		
		return conferencerepository.findOne(id);
	}

	@Override
	public List<StudentConferenceTemporary> findPhoneNumberStudentinConferenceTemporary(String phoneNumber) {
		
		return stdconferencetemporaryrepository.findByPhoneNumberStudentconferencetemporary(phoneNumber);
	}

	@Override
	public String generateCode() {

		String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

			
			String pwd = RandomStringUtils.random( 8, characters );
			
		
		return pwd;
	}

	@Override
	public void deleteStudentConferenceTemporary(int id) {
		
		stdconferencetemporaryrepository.delete(id);
	}

	@Override
	public void savejoinedconference(ConferenceJoinedStudent obj) {
		
		conferencejoinerepository.save(obj);
		
	}

	@Override
	public void CreateNewgroup(Groups obj) {
		
		grouprepository.save(obj);
		
	}

	@Override
	public void add_post_to_group(GroupsPosts obj) {
		
		groups_posts.save(obj);
		
	}

	@Override
	public List<GroupsPosts> findAllPostGroup(Groups obj) {
		
		return groups_posts.find_posts(obj);
	}

	
	

	
	
	

}
