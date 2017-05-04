package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.art.consulting.entities.VoteContent;

public interface VoteContentRepository   extends JpaRepository<VoteContent, Integer>{
	

}
