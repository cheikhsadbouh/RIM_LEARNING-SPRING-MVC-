package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.art.consulting.entities.ConferenceJoinedStudent;

public interface ConferenceJoinedStudentRepository  extends JpaRepository<ConferenceJoinedStudent, Integer> {

	
}
