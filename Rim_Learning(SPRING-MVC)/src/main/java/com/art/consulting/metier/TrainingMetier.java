package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.StudentTrainingTemporary;
import com.art.consulting.entities.Training;

public interface TrainingMetier {
	
	public List<Training> findAll();
	public void newTrainingRequrst(StudentTrainingTemporary training);

}
