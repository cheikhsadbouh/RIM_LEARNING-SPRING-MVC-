package com.art.consulting.metier;

import java.util.List;

import org.springframework.stereotype.Service;

import com.art.consulting.entities.Homepage;
import com.art.consulting.entities.VoteContent;
import com.art.consulting.entities.VoteResult;

public interface PostMetier {
	
	public List<Homepage> getAllPost();
	
	public List<VoteResult> getAllvoteresult();
	public void saveVoteResult(VoteResult obj );
	public void UpdateVoteContentResult(VoteContent obj );
	
	public VoteContent findvotebyid(Integer arg);

}
