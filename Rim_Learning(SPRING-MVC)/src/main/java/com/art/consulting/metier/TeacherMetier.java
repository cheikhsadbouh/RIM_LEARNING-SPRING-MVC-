package com.art.consulting.metier;

import java.util.List;

import com.art.consulting.entities.ConferenceJoinedStudent;
import com.art.consulting.entities.ConferenceTable;
import com.art.consulting.entities.Groups;
import com.art.consulting.entities.GroupsPosts;
import com.art.consulting.entities.GroupsPostsTemporary;
import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.StudentConferenceTemporary;
import com.art.consulting.entities.Teacher;
import com.art.consulting.entities.VoteContent;

public interface TeacherMetier {
	
public  void sendMail( Teacher teacher);
public void save(Homepage post);
public  Teacher getTeacherByName(String name);
public List<Teacher> findAll();

public void SaveVote(VoteContent obj);
public Teacher findTeacherById(int id);


public void CreateNewConference(ConferenceTable obj);

public List<ConferenceTable> findallconference();
public ConferenceTable findconference(int id);

public void addstdtotemporaryconference(StudentConferenceTemporary obj);

public List<StudentConferenceTemporary> findPhoneNumberStudentinConferenceTemporary (String phoneNumber);

public void  deleteStudentConferenceTemporary(int id);
public String generateCode();

public  void savejoinedconference(ConferenceJoinedStudent obj);

public void CreateNewgroup(Groups obj);
public void add_post_to_group(GroupsPosts obj);






}
