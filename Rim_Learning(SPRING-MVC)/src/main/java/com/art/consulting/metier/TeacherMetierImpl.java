package com.art.consulting.metier;

import com.art.consulting.entities.Teacher;
import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;  
@Component
public class TeacherMetierImpl  implements TeacherMetier{
	private static final Logger logger = LoggerFactory.getLogger(TeacherMetierImpl.class);

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
        	  
        	  throw new RuntimeException(e);
          
       	  // logger.error(" error while sending email  sent " +e.getStackTrace());
          }    
             
		
	}

	
	
	

}
