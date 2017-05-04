package com.art.consulting.metier;

import java.util.List;

import org.springframework.stereotype.Service;

import com.art.consulting.entities.Homepage;

public interface PostMetier {
	
	public List<Homepage> getAllPost();

}
