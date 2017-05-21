package com.art.consulting.metier;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.GroupRepository;
import com.art.consulting.dao.GroupTemporaryStudentRepository;
import com.art.consulting.dao.GroupsPostsTemporaryRepository;
import com.art.consulting.dao.JoinedGroupStudentRepository;
import com.art.consulting.dao.StudentRepository;
import com.art.consulting.dao.StudentsTrainingsRepository;
import com.art.consulting.entities.GroupTemporaryStudent;
import com.art.consulting.entities.Groups;
import com.art.consulting.entities.GroupsPostsTemporary;
import com.art.consulting.entities.JoinedGroupStudent;
import com.art.consulting.entities.Student;
import com.art.consulting.entities.StudentsTrainings;

@Service
public class StudentMetierImpl implements StudentMetier{

	@Autowired
	private StudentRepository StudentRepository ;
	
	
	@Autowired
	
	 private StudentsTrainingsRepository studenttrainings;
	
	@Autowired
	private JoinedGroupStudentRepository joinedgrouprepository ;
	
	@Autowired
	private GroupRepository grouprepository ;

	@Autowired
	private GroupTemporaryStudentRepository grouptemporary;
	
	@Autowired
	private GroupsPostsTemporaryRepository grp_temp_post ;
	public StudentRepository getStudentRepository() {
		return StudentRepository;
	}

	public void setStudentRepository(StudentRepository studentRepository) {
		StudentRepository = studentRepository;
	}

	public StudentsTrainingsRepository getStudenttrainings() {
		return studenttrainings;
	}

	public void setStudenttrainings(StudentsTrainingsRepository studenttrainings) {
		this.studenttrainings = studenttrainings;
	}

	public JoinedGroupStudentRepository getJoinedgrouprepository() {
		return joinedgrouprepository;
	}

	public void setJoinedgrouprepository(JoinedGroupStudentRepository joinedgrouprepository) {
		this.joinedgrouprepository = joinedgrouprepository;
	}

	public GroupRepository getGrouprepository() {
		return grouprepository;
	}

	public void setGrouprepository(GroupRepository grouprepository) {
		this.grouprepository = grouprepository;
	}

	public GroupTemporaryStudentRepository getGrouptemporary() {
		return grouptemporary;
	}

	public void setGrouptemporary(GroupTemporaryStudentRepository grouptemporary) {
		this.grouptemporary = grouptemporary;
	}

	public GroupsPostsTemporaryRepository getGrp_temp_post() {
		return grp_temp_post;
	}

	public void setGrp_temp_post(GroupsPostsTemporaryRepository grp_temp_post) {
		this.grp_temp_post = grp_temp_post;
	}

	@Override
	public void addStudent(Student student) {
		StudentRepository.save(student);
		
	}

	@Override
	public Student findbyname(String name) {
		
		return  StudentRepository.findUserByName(name);
	}

	@Override
	public List<StudentsTrainings> findByUsername(String user) {
		
		return  studenttrainings.findByUsername(user);
	}

	@Override
	public Student findone(Integer arg0) {
		
		return StudentRepository.findOne(arg0);
	}

	@Override
	public List<JoinedGroupStudent> findmygroups(Student std) {
		
		return joinedgrouprepository.findgroupsbyid(std);
	}

	@Override
	public List<Groups> findallgroups() {
		
		return grouprepository.findAll();
	}

	@Override
	public void addStudentToTemporaryGroup(GroupTemporaryStudent obj) {
		
		grouptemporary.save(obj);
		
	}

	@Override
	public Groups findGroupById(int id) {
	
		return grouprepository.findOne(id);
	}

	

	@Override
	public List<GroupTemporaryStudent> findPhoneStudentInTemporaryGroup(String ph) {
	
		return grouptemporary.findPhoneStudentInTemporarygroup(ph);
	}

	@Override
	public String getDateAfterThreeDays() {
		 String dateTimes = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(Calendar.getInstance().getTime()).toString();
			// Format for input
			DateTimeFormatter dtf = DateTimeFormat.forPattern("MM/dd/yyyy HH:mm:ss");
			// Parsing the date
			DateTime jodatime = dtf.parseDateTime(dateTimes);
			// Format for output
			DateTimeFormatter dtfOut = DateTimeFormat.forPattern("MM/dd/yyyy HH:mm:ss");
		
		
		return jodatime.plusDays(3).toString(dtfOut);
	}

	@Override
	public void addStudentToGroup(JoinedGroupStudent obj) {
		
		joinedgrouprepository.save(obj);
	}

	@Override
	public void deleteStudentFromtempgroup(int obj) {
		
		
		grouptemporary.delete(obj);
	}

	@Override
	public void add_grp_temp_post(GroupsPostsTemporary obj) {
		
		    grp_temp_post.save(obj);
		
	}

	@Override
	public List<GroupsPostsTemporary> find_grp_temp_post(Groups obj) {
		
		return  grp_temp_post.find_temp_post(obj);
	}

	@Override
	public GroupsPostsTemporary findTempGroup(int obj) {
		
		return grp_temp_post.findOne(obj);
	}

	@Override
	public void deleteTempPost(int obj) {
		
		grp_temp_post.delete(obj);
	}

	@Override
	public List<JoinedGroupStudent> findStudentInGroup(Groups id) {
		
		return joinedgrouprepository.findStudentInGroup(id);
	}

	


	
	
	
	
	

}
