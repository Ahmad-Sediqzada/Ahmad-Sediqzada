package com.ahmad.projects.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ahmad.projects.models.Project;
import com.ahmad.projects.repositories.ProjectRepository;

@Service
public class ProjectService {

	@Autowired
	public ProjectRepository projectRepo;
	
//	Create
	public Project createProject(Project newProject) {
		return projectRepo.save(newProject);
	}
	
//	Update
	public Project updateProject(Project updatedProject) {
		return projectRepo.save(updatedProject);
	}
	
//	Delete
	public void deleteProject(Long id) {
		projectRepo.deleteById(id);
	}
	
//	Project Details
	public Project projectDetails(Long id) {
		return projectRepo.findById(id).orElse(null);
	}
	
//	Get All Projects
	public List<Project> getAllProjects(){
		return projectRepo.findAll();
	}
	
}
