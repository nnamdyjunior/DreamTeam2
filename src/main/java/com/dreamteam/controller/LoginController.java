package com.dreamteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	//write your code here
	
	@RequestMapping(value="/select", method=RequestMethod.POST)
	public ModelAndView loadOptions(@RequestParam String username, @RequestParam String password) {
		ModelAndView mav = new ModelAndView();
		
		if(!username.equals("nnamdy") && !password.equals("junior")) {
			mav.setViewName("index");
			mav.addObject("message", "Incorrect Username/Password!");
			
			return mav;
		}
		
		
		mav.setViewName("productSelection");
		mav.addObject("username", username);
		
		return mav;
	}
}
