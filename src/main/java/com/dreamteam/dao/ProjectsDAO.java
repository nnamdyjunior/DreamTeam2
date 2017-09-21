package com.dreamteam.dao;

import java.util.List;

//import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.Project;

@Repository
@Transactional
public class ProjectsDAO implements ProjectsDaoInterface{
	//write your code here
	
	@Autowired
	private SessionFactory session;
	
	public void editProject(Project project) {
		session.getCurrentSession().update(project);
	}
	
	public void addProject(Project project) {
		session.getCurrentSession().save(project);
	}

	public void deleteProject(int projectID) {
		Project proj = getProject(projectID);
		session.getCurrentSession().delete(proj);
	}
	
	public Project getProject(int projectID) {
		return (Project)session.getCurrentSession().get(Project.class, projectID);
	}
	
	public List<Project> getAllProjects(){
		return session.getCurrentSession().createQuery("from Project").list();
	}
}
