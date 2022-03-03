package com.dojo.survey.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.survey.models.Students;

@Repository
public interface StudentRepository extends CrudRepository<Students, Long> {
	
	List<Students> findAll();

}
