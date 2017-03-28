package com.art.consulting.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.art.consulting.entities.Training;

public interface TrainingRepository extends JpaRepository<Training, Integer> {

}
