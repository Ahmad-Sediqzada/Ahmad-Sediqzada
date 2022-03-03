package com.ahmad.project.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ahmad.project.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	
	 User findByEmail(String email);
	

}
