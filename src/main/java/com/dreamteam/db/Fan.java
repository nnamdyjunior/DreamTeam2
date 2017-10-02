package com.dreamteam.db;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "items", catalog = "RealMadrid")
public class Fan implements Serializable{

	private int itemID, year;
	private String itemName, productType, itemImg;
	
	public Fan() {
		
	}
	
	public Fan(int itemID, int year, String itemName, String productType, String itemImg) {
		this.itemID = itemID;
		this.year = year;
		this.itemName = itemName;
		this.productType = productType;
		this.itemImg = itemImg;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "item_id", unique = true, nullable = false)
	public int getItemID() {
		return itemID;
	}

	public void setItemID(int itemID) {
		this.itemID = itemID;
	}

	@Column(name = "model_year", nullable = false)
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	@Column(name = "item_name", nullable = false)
	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Column(name = "product_type", nullable = false)
	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	@Column(name = "item_image", nullable = false)
	public String getItemImg() {
		return itemImg;
	}

	public void setItemImg(String itemImg) {
		this.itemImg = itemImg;
	}
	
	
}
