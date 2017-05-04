package com.art.consulting.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.HomePageRepository;
import com.art.consulting.entities.Homepage;

@Service
public class PostMetierImpl implements PostMetier {

	@Autowired
	private HomePageRepository homerepository ;
	
	
	
	@Override
	public List<Homepage> getAllPost() {
		
		
		
		return  homerepository.findAll();
	}

}
