package com.ahmad.project.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ahmad.project.models.Rating;

@Repository
public interface RatingRepository extends CrudRepository<Rating, Long> {
	
	

}