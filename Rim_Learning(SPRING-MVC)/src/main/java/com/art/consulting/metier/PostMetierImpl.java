package com.art.consulting.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.art.consulting.dao.HomePageRepository;
import com.art.consulting.dao.VoteContentRepository;
import com.art.consulting.dao.VoteResultRepository;
import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.VoteContent;
import com.art.consulting.entities.VoteResult;

@Service
public class PostMetierImpl implements PostMetier {

	@Autowired
	private HomePageRepository homerepository ;
	
	@Autowired
	private VoteResultRepository voteresultrepository ;
	
	@Autowired
	private VoteContentRepository votecontentrepository ;
	@Override
	public List<Homepage> getAllPost() {
		
		
		
		return  homerepository.findAll();
	}



	@Override
	public List<VoteResult> getAllvoteresult() {
		
		return voteresultrepository.findAll();
	}



	@Override
	public void saveVoteResult(VoteResult obj) {
		
		voteresultrepository.save(obj);
		
	}



	@Override
	public VoteContent findvotebyid(Integer arg) {
		
		return votecontentrepository.findOne(arg);
	}



	@Override
	public void UpdateVoteContentResult(VoteContent obj) {
		
		votecontentrepository.save(obj);
		
	}

}
