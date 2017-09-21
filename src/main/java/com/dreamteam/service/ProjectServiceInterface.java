package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.Project;

public interface ProjectServiceInterface {
	public void addProject(Project project);
	public void editProject(Project project);
	public void deleteProject(int projectID);
	public Project getProject(int projectID);
	public List<Project> getAllProjects();
}
