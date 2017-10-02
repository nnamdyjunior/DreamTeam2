package com.dreamteam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SelectionController {

	@RequestMapping(value="/select", method=RequestMethod.GET)
	public String loadOptions2(Map<String, Object> map) {
		map.put("username", "Ramos");
		
		return "productSelection";
	}
}
