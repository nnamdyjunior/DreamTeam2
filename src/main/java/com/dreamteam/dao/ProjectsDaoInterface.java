package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.Project;

public interface ProjectsDaoInterface {
	public void addProject(Project project);
	public void editProject(Project project);
	public void deleteProject(int projectID);
	public Project getProject(int projectID);
	public List<Project> getAllProjects();
}
