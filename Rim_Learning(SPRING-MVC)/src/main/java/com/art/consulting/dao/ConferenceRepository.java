package com.art.consulting.dao;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.art.consulting.entities.ConferenceTable;


public interface ConferenceRepository extends JpaRepository<ConferenceTable, Integer> {

	 
	 
}
