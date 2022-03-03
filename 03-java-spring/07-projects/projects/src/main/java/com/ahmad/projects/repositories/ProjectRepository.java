package com.ahmad.projects.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ahmad.projects.models.Project;


@Repository
public interface ProjectRepository extends CrudRepository <Project, Long>{
	
// Get all projects
	List<Project> findAll();

}
