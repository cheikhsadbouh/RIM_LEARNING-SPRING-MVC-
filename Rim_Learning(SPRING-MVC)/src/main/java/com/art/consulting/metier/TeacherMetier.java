package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.Teacher;
import com.art.consulting.entities.VoteContent;

public interface TeacherMetier {
	
public  void sendMail( Teacher teacher);
public void save(Homepage post);
public  Teacher getTeacherByName(String name);
public List<Teacher> findAll();

public void SaveVote(VoteContent obj);
public Teacher findTeacherById(int id);

}
