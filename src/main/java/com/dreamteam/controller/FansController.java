package com.dreamteam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dreamteam.db.Fan;
import com.dreamteam.db.FanSettings;
import com.dreamteam.db.Project;
import com.dreamteam.service.FansServiceInterface;
import com.dreamteam.service.FansSettingsServiceInterface;
import com.dreamteam.service.ProjectServiceInterface;


@Controller
public class FansController {
	
	@Autowired
	FansServiceInterface fansService;
	
	@Autowired
	FansSettingsServiceInterface fansSettingsService;
	
	@Autowired 
	ProjectServiceInterface projectService;
	
	@RequestMapping("/fans")
	public String allProj(Map<String, Object> map) {
		Fan fan = new Fan();
		FanSettings fanSettings = new FanSettings();
		Project project = new Project();
		
		map.put("fan", fan);
		map.put("fansList", fansService.getAllFans());
		map.put("fanSettings", fanSettings);
		map.put("fansSettingsList", fansSettingsService.getAllFanSettings());
		map.put("project", project);
		map.put("projectList", projectService.getAllProjects());
		
		return "hvacFans";
	}
	
	@RequestMapping(value="/viewInfo", method=RequestMethod.GET)
	public String fanInfo(@RequestParam int item, Map<String, Object> map) {
		map.put("item", item);
		map.put("fansList", fansService.getAllFans());
		map.put("fansSettingsList", fansSettingsService.getAllFanSettings());
		map.put("projectList", projectService.getAllProjects());
		
		return "productInfo";
	}
	
	@RequestMapping(value="/compareFans", method=RequestMethod.GET)
	public ModelAndView compareFans(@RequestParam int[] items) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("comparison");
		mav.addObject("items", items);
		mav.addObject("fansSettingsList", fansSettingsService.getAllFanSettings());
		mav.addObject("fansList", fansService.getAllFans());
		
		return mav;
	}
}
