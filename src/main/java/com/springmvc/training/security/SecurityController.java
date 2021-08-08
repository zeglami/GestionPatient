package com.springmvc.training.security;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {
	@GetMapping("/notAutorized")
	public String error() {
		
		return "notAutorized";	
	}

	@GetMapping("/login")
	public String login() {
		
		return "login";	
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		try {
			request.logout();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/login";	
	}
	
}
