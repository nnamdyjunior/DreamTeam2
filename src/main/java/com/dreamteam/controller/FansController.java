package com.dreamteam.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FansController {
	
	@RequestMapping("/fans")
	public String allProj(Map<String, Object> map) {
		
		
		return "hvacFans";
	}
}
