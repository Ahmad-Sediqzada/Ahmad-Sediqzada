package com.example.demo.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
	
	@RequestMapping("/")
	private String index() {
		return "Hello Java";
	}
	
	
	@RequestMapping("/welcome")
	private String welcome() {
		return "Hello and Welcome to Java";
	}
	
}
