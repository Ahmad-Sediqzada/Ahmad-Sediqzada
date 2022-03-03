package com.ahmad.project.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ahmad.project.models.Art;

@Repository
public interface ArtRepository extends CrudRepository<Art, Long> {
	
	 List<Art> findAll();
	

}