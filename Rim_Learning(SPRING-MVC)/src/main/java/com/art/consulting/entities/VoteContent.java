package com.art.consulting.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


@Entity
public class VoteContent  implements Serializable{
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id_vote_content;
	
	@Column(columnDefinition = "longtext")
	private String vote_content ;
	
	@ManyToOne
	@JoinColumn(name="post_id")
	private Homepage post ;
	
	@Column(columnDefinition = "TINYINT default '0'")
	private int result;
	
	@OneToMany(targetEntity=VoteResult.class,mappedBy="votecontent",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<VoteResult> Voteresult ;
	
	public VoteContent(){}

	

	public VoteContent(int id_vote_content, String vote_content, Homepage post, List<VoteResult> voteresult) {
		super();
		this.id_vote_content = id_vote_content;
		this.vote_content = vote_content;
		this.post = post;
		Voteresult = voteresult;
		this.result = result;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public List<VoteResult> getVoteresult() {
		return Voteresult;
	}



	public void setVoteresult(List<VoteResult> voteresult) {
		Voteresult = voteresult;
	}



	public int getId_vote_content() {
		return id_vote_content;
	}

	public void setId_vote_content(int id_vote_content) {
		this.id_vote_content = id_vote_content;
	}

	public String getVote_content() {
		return vote_content;
	}

	public void setVote_content(String vote_content) {
		this.vote_content = vote_content;
	}

	public Homepage getPost() {
		return post;
	}

	public void setPost(Homepage post) {
		this.post = post;
	}
	
	
	
	

}
