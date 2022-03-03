package com.ahmad.projects.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ahmad.projects.models.Project;
import com.ahmad.projects.models.User;
import com.ahmad.projects.services.ProjectService;
import com.ahmad.projects.services.UserService;
import com.ahmad.projects.validator.UserValidator;


@Controller
public class HomeController {
	
	@Autowired
	private ProjectService pService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserValidator userValidator;
	
	@GetMapping("/")
	public String index(@ModelAttribute("user") User user) {
		return "index.jsp";
	}
	
	@PostMapping("/registration")
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult results, HttpSession session) {
		userValidator.validate(user, results);
		if(results.hasErrors()) {
			return "index.jsp";
		}else {
			User newUser=userService.registerUser(user);
			session.setAttribute("userId", newUser.getId());
			return "redirect:/projects/dashboard";
		}
		
	}
	
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session, RedirectAttributes redirectAttributes) {
        // if the user is authenticated, save their user id in session
		if(userService.authenticateUser(email, password)) {
			User user=userService.findByEmail(email);
			session.setAttribute("userId", user.getId());
			return "redirect:/projects/dashboard";
		}else {
			redirectAttributes.addFlashAttribute("error","Invalid user/pass");
			return "redirect:/";
		}
	}
//	Logout
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
	@GetMapping("/projects/dashboard")
	public String projects(Model model,HttpSession session) {
		if(session.getAttribute("userId")!=null) {
			User user=userService.findById((Long)session.getAttribute("userId"));
			model.addAttribute("user",user);
			model.addAttribute("projects", pService.getAllProjects());
			return "/projects/dashboard.jsp";
		}else {
			return "redirect:/";
		}
		
	}
	
	
	@GetMapping("/project/new")
	public String newProject(@ModelAttribute("project") Project project, Model model) {
		model.addAttribute("students");
		return "/projects/new.jsp";
	}
	
	
	@PostMapping("/project/create")
	public String createProject(@Valid @ModelAttribute("project") Project project, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("students");
			return "/projects/new.jsp";
		}else {
			pService.createProject(project);
			return "/projects/dashboard.jsp";
		}
	}
	
	
	@GetMapping("/projects/{id}/edit")
	public String editProject(@PathVariable("id") Long id, Model model) {
			model.addAttribute("editProject", pService.projectDetails(id));
			model.addAttribute("students");
			return "/projects/edit.jsp";
	}
	
	
	@PutMapping("/projects/{id}/update")
	public String updateProject(@Valid @ModelAttribute("editProject") Project project, BindingResult result, @PathVariable("id") Long id, Model model) {
		if(result.hasErrors()) {
			return "/projects/edit.jsp";
		}else {
			pService.updateProject(project);
			return "/projects/dashboard.jsp";
		}
	}
	
	
	@GetMapping("/projects/{id}/delete")
	public String deleteProject(@PathVariable("id") Long id) {
	pService.deleteProject(id);
	return "/dashboard";
	}
	
	
	@GetMapping("/projects/{id}/details")
	public String details(@PathVariable("id") Long id, Model model) {
	model.addAttribute("project", pService.projectDetails(id));
	return "/projects/details.jsp";
	}
}
