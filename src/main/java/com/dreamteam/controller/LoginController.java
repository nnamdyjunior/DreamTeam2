package com.dreamteam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dreamteam.service.LoginServiceInterface;

@Controller
public class LoginController {
	//write your code here
	@Autowired
	LoginServiceInterface loginService;
	
	@RequestMapping(value="/select", method=RequestMethod.POST)
	public ModelAndView loadOptions(@RequestParam String username, @RequestParam String password) {
		ModelAndView mav = new ModelAndView();
		String ans = loginService.verify(username, password);
		
		if(!ans.equals("pass")) {
			mav.setViewName("index");
			mav.addObject("message", loginService.verify(username, password));
			
			return mav;
		}
		
		
		mav.setViewName("productSelection");
		mav.addObject("username", username);
		
		return mav;
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout() {
		return "index";
	}
}
