package com.dreamteam.db;
// Generated Sep 20, 2017 11:11:05 PM by Hibernate Tools 5.2.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Project generated by hbm2java
 */
@Entity
@Table(name = "project", catalog = "RealMadrid")
public class Project implements java.io.Serializable {

	private int projectId, userID;
	private String projectName;

	public Project() {
	}

	public Project(int projectId, String projectName) {
		this.projectId = projectId;
		this.projectName = projectName;
	}

	@Id

	@Column(name = "project_id", unique = true, nullable = false)
	public int getProjectId() {
		return this.projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	@Id

	@Column(name = "user_id", nullable = false)
	public int getUserID() {
		return userID;
	}
	

	public void setUserID(int userID) {
		this.userID = userID;
	}
	

	@Column(name = "project_name", nullable = false)
	public String getProjectName() {
		return this.projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

}
