package com.art.consulting.metier;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.StudentsTrainings;
import com.art.consulting.entities.Training;


public interface TrainingMetier {
	
	public List<Training> findAll();
	public void newTrainingRequrst(StudentTrainingTemporary training);
	public List<StudentTrainingTemporary> findByPhoneNumberStudent(String phonenumberstudent);  
    public void delete(Integer id);
    public Training findone(Integer id);
    public  Training gettrainingname(int id);
    
    
    //duplicated table 
    
    public List<StudentsTrainings> findByUsernameInDuplicatedTrainings(String user);
    public  void deletefromduplicatedtraings(Integer id);
    public void addInDuplicatedTrainings(StudentsTrainings student);
    public String  getTimeafterOneMonth();
    public Integer [] getdatedefference(String date);

}
