package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.art.consulting.entities.VoteResult;



public interface VoteResultRepository   extends JpaRepository<VoteResult, Integer> {
	

}
