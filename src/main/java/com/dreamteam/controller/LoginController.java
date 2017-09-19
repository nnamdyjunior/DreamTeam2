package com.dreamteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	//write your code here
	
	@RequestMapping(value="/options", method=RequestMethod.POST)
	public ModelAndView loadOptions(@RequestParam String userName) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productSelection");
		mav.addObject("username", userName);
		
		return mav;
	}
}
