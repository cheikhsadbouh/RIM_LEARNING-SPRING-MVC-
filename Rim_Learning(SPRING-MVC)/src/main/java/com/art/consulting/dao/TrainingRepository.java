package com.art.consulting.dao;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.art.consulting.entities.Training;

public interface TrainingRepository extends JpaRepository<Training, Integer> {

	@Query("FROM Training t  where t.idTraining = :id") 
    public  Training gettrainingname(@Param("id") int id);


	
}
