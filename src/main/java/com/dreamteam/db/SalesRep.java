package com.dreamteam.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sales_rep", catalog = "RealMadrid")
public class SalesRep {
	private String name, phone, email, web;
	private int salesId, itemId;
	
	public SalesRep() {
		
	}
	
	public SalesRep(String name, String phone, String email, String web, int salesId, int itemId) {
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.web = web;
		this.salesId = salesId;
		this.itemId = itemId;
	}

	@Column(name = "name", nullable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	@Column(name = "sales_id", unique = true, nullable = false)
	public int getSalesId() {
		return salesId;
	}

	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}

	@Column(name = "item_id", nullable = false)
	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	
}
