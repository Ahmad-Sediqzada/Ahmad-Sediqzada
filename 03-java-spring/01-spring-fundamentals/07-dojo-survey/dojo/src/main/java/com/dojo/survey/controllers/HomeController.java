package com.dojo.survey.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@PostMapping("/welcome")
	public String welcome(@RequestParam("firstName") String fName,
			@RequestParam("email") String email,
			@RequestParam("program") String program,
			Model userModel) {
		userModel.addAttribute("firstName", fName);
		userModel.addAttribute("email", email);
		userModel.addAttribute("program", program);
		return "welcome.jsp";
	}

}
