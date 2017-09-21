package com.dreamteam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dreamteam.db.Project;
import com.dreamteam.service.ProjectServiceInterface;
import com.dreamteam.service.ProjectsService;

@Controller
public class ProjectsController {
	//write your code here
	
	@Autowired
	private ProjectServiceInterface projectsService;
	
	@RequestMapping("/projects")
	public String allProj(Map<String, Object> map) {
		Project project = new Project();
		map.put("project", project);
		map.put("projectList", projectsService.getAllProjects());
		
		return "manageProject";
	}
	
	@RequestMapping(value="/projectsPage", method=RequestMethod.POST)
	public String performAction(@ModelAttribute Project project, BindingResult result, @RequestParam String action, Map<String, Object> map) {
		Project projects = new Project();
		
		switch(action.toLowerCase()) {
			case "add":
				projectsService.addProject(project);
				projects = project;
				break;
			case "edit":
				projectsService.editProject(project);
				projects = project;
				break;
			case "delete":
				projectsService.deleteProject(project.getProjectId());
				projects = new Project();
				break;
		}
		map.put("project", projects);
		map.put("projectList", projectsService.getAllProjects());
		
		return "manageProject";
	}
}
