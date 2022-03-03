package com.ahmad.ABC.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ahmad.ABC.models.Project;
import com.ahmad.ABC.models.User;


public interface ProjectRepository  extends CrudRepository<Project, Long> {

	// Create
	// Read
	// Update
	// Delete
	
	List<Project> findAll(); 
	List<Project> findAllByOrderByProjectNameDesc();
	List<Project> findDistinctByOrderByLikersDesc();
//	List<Project> findByUser(User user);
	
	
	
	@Query("SELECT p FROM Project p")
    List<Project> findAllProjects();
	
	
	@Query(value="SELECT * from projects", nativeQuery=true)
    List<Project> findAllprojectsNative();


	
	
	
	
	
	
	
	
	
	
	
	
	


	
}
