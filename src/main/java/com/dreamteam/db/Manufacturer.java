package com.dreamteam.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "manufacturer", catalog = "RealMadrid")
public class Manufacturer {
	private String department, phone, email, web;
	private int manu_id, item_id;
	public Manufacturer() {
		
	}
	
	public Manufacturer(String department, String phone, String email, String web, int manu_id, int item_id) {
		this.department = department;
		this.phone = phone;
		this.email = email;
		this.web = web;
		this.manu_id = manu_id;
		this.item_id = item_id;
	}

	@Column(name = "department", nullable = false)
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	@Column(name = "phone", nullable = false)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "email", nullable = false)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "web", nullable = false)
	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "manu_id", unique = true, nullable = false)
	public int getManu_id() {
		return manu_id;
	}

	public void setManu_id(int manu_id) {
		this.manu_id = manu_id;
	}

	@Column(name = "item_id", nullable = false)
	public int getItem_id() {
		return item_id;
	}

	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	
	
}
