package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


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
	
	public VoteContent(){}

	public VoteContent(int id_vote_content, String vote_content, Homepage post) {
		super();
		this.id_vote_content = id_vote_content;
		this.vote_content = vote_content;
		this.post = post;
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
