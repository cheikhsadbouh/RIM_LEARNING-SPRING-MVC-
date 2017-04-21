package com.art.consulting.metier;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.Hours;
import org.joda.time.Minutes;
import org.joda.time.Seconds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.StudentTrainingTemporaryRepository;
import com.art.consulting.dao.StudentsTrainingsRepository;
import com.art.consulting.dao.TrainingRepository;
import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.StudentsTrainings;
import com.art.consulting.entities.Training;

@Service

public class TrainingMetierImpl  implements TrainingMetier {

	@Autowired
	private    TrainingRepository trainingrepository ;
	
	@Autowired
	private StudentsTrainingsRepository duplicatedTrainigsRepository ;
	
	@Autowired
	private StudentTrainingTemporaryRepository askfortraining ;
	
	
	public StudentTrainingTemporaryRepository getAskfortraining() {
		return askfortraining;
	}




	public void setAskfortraining(StudentTrainingTemporaryRepository askfortraining) {
		this.askfortraining = askfortraining;
	}




	public StudentsTrainingsRepository getDuplicatedTrainigsRepository() {
		return duplicatedTrainigsRepository;
	}




	public void setDuplicatedTrainigsRepository(StudentsTrainingsRepository duplicatedTrainigsRepository) {
		this.duplicatedTrainigsRepository = duplicatedTrainigsRepository;
	}




	@Override
	public List<Training> findAll() {
		
		
		return trainingrepository.findAll();
	}




	public TrainingRepository getTrainingrepository() {
		return trainingrepository;
	}




	public void setTrainingrepository(TrainingRepository trainingrepository) {
		this.trainingrepository = trainingrepository;
	}




	@Override
	public void newTrainingRequrst(StudentTrainingTemporary training) {
		
         	askfortraining.save(training);
		
		
	}




	@Override
	public List<StudentTrainingTemporary> findByPhoneNumberStudent(String phonenumberstudent) {
		
		
		return askfortraining.findByPhoneNumberStudent(phonenumberstudent);
	}




	@Override
	public void delete(Integer id) {
		
		
		askfortraining.delete(id);
		
	}




	@Override
	public Training findone(Integer id) {
		
		return trainingrepository.findOne(id);
	}



	//duplicated repository

	@Override
	public List<StudentsTrainings> findByUsernameInDuplicatedTrainings(String user) {
		
		return duplicatedTrainigsRepository.findByUsername(user);
	}




	@Override
	public void deletefromduplicatedtraings(Integer id) {
		
		duplicatedTrainigsRepository.delete(id);
		
	}


 

	@Override
	public void addInDuplicatedTrainings(StudentsTrainings student) {
		
		duplicatedTrainigsRepository.save(student);
	}




	@Override
	public String getTimeafterOneMonth() {
		 Date date = new Date();
		 SimpleDateFormat dt = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(date);
	    cal.add(Calendar.MONTH, 1);
	    return dt.format(cal.getTime()).toString();
		
	}




	@Override
	public Integer [] getdatedefference(String dateStop) {
		
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		 String datenow =   format.format(new Date()).toString();
		  System.out.println("stop :"+dateStop);
		 System.out.println("now :"+datenow);
			

			Date d1 = null;
			Date d2 = null;
			DateTime dt1 =null;
			DateTime dt2=null;
			try {
				d1 = format.parse(dateStop);
				d2 = format.parse(datenow);

				 dt1 = new DateTime(d1);
				 dt2 = new DateTime(d2);

				System.out.print(Days.daysBetween(dt2, dt1).getDays() + " days, ");
				System.out.print(Hours.hoursBetween(dt2, dt1).getHours() % 24 + " hours, ");
				System.out.print(Minutes.minutesBetween(dt2, dt1).getMinutes() % 60 + " minutes, ");
				System.out.print(Seconds.secondsBetween(dt2, dt1).getSeconds() % 60 + " seconds.");

				
			 } catch (Exception e) {
				e.printStackTrace();
			 }
		
		
		
		return new Integer []{
				
				Days.daysBetween(dt2, dt1).getDays(),
				Hours.hoursBetween(dt2, dt1).getHours() % 24 ,
				Minutes.minutesBetween(dt2, dt1).getMinutes() % 60,
				Seconds.secondsBetween(dt2, dt1).getSeconds() % 60
				};
	}




	@Override
	public  Training gettrainingname(int id) {
		// TODO Auto-generated method stub
		return trainingrepository.gettrainingname(id);
	}
	
	

}
