package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.Groups;
import com.art.consulting.entities.GroupsPosts;
import com.art.consulting.entities.GroupsPostsTemporary;;

public interface GroupsPostsRepository   extends JpaRepository<GroupsPosts, Integer>{

	
	
	 @Query("FROM GroupsPosts t  where t.group_post = :ids") 
	 List<GroupsPosts> find_posts(@Param("ids")Groups obj);
	
}
