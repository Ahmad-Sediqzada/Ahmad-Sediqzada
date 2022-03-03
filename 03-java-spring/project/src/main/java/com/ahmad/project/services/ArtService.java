package com.ahmad.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ahmad.project.models.Art;
import com.ahmad.project.models.Rating;
import com.ahmad.project.repositories.ArtRepository;
import com.ahmad.project.repositories.RatingRepository;
import com.ahmad.project.repositories.UserRepository;

@Service
public class ArtService {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ArtRepository artRepository;
	
	@Autowired
	private RatingRepository ratingRepository;
	
//	Collection of arts
	public List<Art> allArts(){
		return artRepository.findAll();
	}
//	Add
	
	public Art createArt(Art art) {
		return artRepository.save(art);
	}
	
	
//	Get One Art
	public Art getOneArt(Long id) {
		return artRepository.findById(id).orElse(null);
	}
	
//	Update
	public Art updateArt(Art art) {
		return artRepository.save(art);
	}
//	Delete
	public void deleteArt(Long id) {
		artRepository.deleteById(id);
		
	}
//	Get One Art Detail 
	public Art artDetails(Long id) {
		return artRepository.findById(id).orElse(null);
	}
//	Add Rating to Art 
	public void AddRating(Rating rating) {
		 ratingRepository.save(rating);
	}
	
	
	
	
	
}