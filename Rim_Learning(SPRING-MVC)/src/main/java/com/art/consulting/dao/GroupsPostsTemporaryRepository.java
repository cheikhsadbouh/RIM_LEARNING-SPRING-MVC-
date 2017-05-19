package com.art.consulting.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.art.consulting.entities.GroupTemporaryStudent;
import com.art.consulting.entities.Groups;
import com.art.consulting.entities.GroupsPostsTemporary;

public interface GroupsPostsTemporaryRepository  extends JpaRepository<GroupsPostsTemporary, Integer> {

	
	 @Query("FROM GroupsPostsTemporary t  where t.group_post = :ids") 
	 List<GroupsPostsTemporary> find_temp_post(@Param("ids")Groups obj);
}
