package com.art.consulting.dao;



import org.springframework.data.jpa.repository.JpaRepository;


import com.art.consulting.entities.Groups;



public interface GroupRepository   extends JpaRepository<Groups, Integer>{

	
}
