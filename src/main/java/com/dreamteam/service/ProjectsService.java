package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.ProjectsDAO;
import com.dreamteam.dao.ProjectsDaoInterface;
import com.dreamteam.db.Project;

@Service
public class ProjectsService implements ProjectServiceInterface{
	//write your code here
	
	@Autowired
	private ProjectsDaoInterface projectsDao;
	
	@Transactional
	public void editProject(Project project) {
		projectsDao.editProject(project);
	}
	
	@Transactional
	public void addProject(Project project) {
		projectsDao.addProject(project);
	}

	@Transactional
	public void deleteProject(int projectID) {
		projectsDao.deleteProject(projectID); 
	}
	
	@Transactional
	public Project getProject(int projectID) {
		return projectsDao.getProject(projectID);
	}
	
	@Transactional
	public List<Project> getAllProjects(){
		return projectsDao.getAllProjects();
	}
}
