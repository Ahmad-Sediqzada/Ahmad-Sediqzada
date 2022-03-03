package com.dojo.survey.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dojo.survey.models.Students;
import com.dojo.survey.repositories.StudentRepository;
import com.dojo.survey.services.StudentService;

@RestController
public class APIController {

	@Autowired
	private StudentService sService;
	
	@GetMapping("students")
	private List<Students> getStudents() {
		return this.sService.allStudents();
	}
	
}
