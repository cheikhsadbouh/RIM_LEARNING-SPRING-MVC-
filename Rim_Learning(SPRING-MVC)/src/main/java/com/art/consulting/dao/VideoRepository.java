package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.art.consulting.entities.Video;

public interface VideoRepository extends JpaRepository<Video, Integer> {

}
