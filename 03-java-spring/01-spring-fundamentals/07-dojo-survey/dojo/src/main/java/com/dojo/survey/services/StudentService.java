package com.dojo.survey.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dojo.survey.models.Students;
import com.dojo.survey.repositories.StudentRepository;

@Service
public class StudentService {
	
	private StudentRepository studentRepository;

	public StudentService(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}
	
	public List<Students> allStudents() {
        return studentRepository.findAll();
    }

}
