package com.dreamteam.db;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product_details", catalog = "RealMadrid")
public class FanDetails {
	private String airfoils, airfoilFinishes, hardwareFinishes,motor, controls, onboardSensors, environment, accessories;
	private int detailsId, itemId;
	
	public FanDetails() {
	}

	public FanDetails(String airfoils, String airfoilFinishes, String hardwareFinishes, String motor, String controls,
			String onboardSensors, String environment, String accessories, int itemId) {
		this.airfoils = airfoils;
		this.airfoilFinishes = airfoilFinishes;
		this.hardwareFinishes = hardwareFinishes;
		this.motor = motor;
		this.controls = controls;
		this.onboardSensors = onboardSensors;
		this.environment = environment;
		this.accessories = accessories;
		this.itemId = itemId;
	}

	@Column(name = "airfoils", nullable = false)
	public String getAirfoils() {
		return airfoils;
	}

	public void setAirfoils(String airfoils) {
		this.airfoils = airfoils;
	}

	@Column(name = "airfoil_finishes", nullable = false)
	public String getAirfoilFinishes() {
		return airfoilFinishes;
	}

	public void setAirfoilFinishes(String airfoilFinishes) {
		this.airfoilFinishes = airfoilFinishes;
	}

	@Column(name = "hardware_finishes", nullable = false)
	public String getHardwareFinishes() {
		return hardwareFinishes;
	}

	public void setHardwareFinishes(String hardwareFinishes) {
		this.hardwareFinishes = hardwareFinishes;
	}

	@Column(name = "motor", nullable = false)
	public String getMotor() {
		return motor;
	}

	public void setMotor(String motor) {
		this.motor = motor;
	}

	@Column(name = "controls", nullable = false)
	public String getControls() {
		return controls;
	}

	public void setControls(String controls) {
		this.controls = controls;
	}

	@Column(name = "onboard_sensors", nullable = false)
	public String getOnboardSensors() {
		return onboardSensors;
	}

	public void setOnboardSensors(String onboardSensors) {
		this.onboardSensors = onboardSensors;
	}

	@Column(name = "environment", nullable = false)
	public String getEnvironment() {
		return environment;
	}

	public void setEnvironment(String environment) {
		this.environment = environment;
	}

	@Column(name = "accessories", nullable = false)
	public String getAccessories() {
		return accessories;
	}

	public void setAccessories(String accessories) {
		this.accessories = accessories;
	}

	@Column(name = "item_id", nullable = false)
	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "details_id", unique = true, nullable = false)
	public int getDetailsId() {
		return detailsId;
	}

	public void setDetailsId(int detailsId) {
		this.detailsId = detailsId;
	}
	
	
	
}
