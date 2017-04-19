package com.art.consulting.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.StudentTrainingTemporaryRepository;
import com.art.consulting.dao.TrainingRepository;
import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.Training;

@Service

public class TrainingMetierImpl  implements TrainingMetier {

	@Autowired
	private    TrainingRepository trainingrepository ;
	
	@Autowired
	private StudentTrainingTemporaryRepository askfortraining ;
	
	
	public StudentTrainingTemporaryRepository getAskfortraining() {
		return askfortraining;
	}




	public void setAskfortraining(StudentTrainingTemporaryRepository askfortraining) {
		this.askfortraining = askfortraining;
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
	
	

}
