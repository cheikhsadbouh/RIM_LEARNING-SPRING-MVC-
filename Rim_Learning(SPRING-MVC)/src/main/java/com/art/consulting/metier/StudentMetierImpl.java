package com.art.consulting.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.GroupRepository;
import com.art.consulting.dao.JoinedGroupStudentRepository;
import com.art.consulting.dao.StudentRepository;
import com.art.consulting.dao.StudentsTrainingsRepository;
import com.art.consulting.entities.Groups;
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
	public List<JoinedGroupStudent> findmygroups(int id) {
		
		return joinedgrouprepository.findgroupsbyid(id);
	}

	@Override
	public List<Groups> findallgroups() {
		
		return grouprepository.findAll();
	}
	
	
	
	
	

}
