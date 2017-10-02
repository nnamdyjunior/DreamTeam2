package com.dreamteam.db;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="item_settings", catalog="RealMadrid")
public class FanSettings implements Serializable{
	
	private int settingsID, airflow, firm, global, fanSpeed, numFanSpeed, height, weight, itemID;
	float maxPower, maxSpeedSound, fanSweepDia, voltage;
	private String brand, series, model;
	
	public FanSettings() {
		
	}
	
	public FanSettings(int settingsID, int airflow, int firm, int global, int fanSpeed, int numFanSpeed, int height,
			int weight, int itemID, float maxPower, float maxSpeedSound, float fanSweepDia, float voltage,
			String brand, String series, String model) {
		this.settingsID = settingsID;
		this.airflow = airflow;
		this.firm = firm;
		this.global = global;
		this.fanSpeed = fanSpeed;
		this.numFanSpeed = numFanSpeed;
		this.height = height;
		this.weight = weight;
		this.itemID = itemID;
		this.maxPower = maxPower;
		this.maxSpeedSound = maxSpeedSound;
		this.fanSweepDia = fanSweepDia;
		this.voltage = voltage;
		this.brand = brand;
		this.series = series;
		this.model = model;
	}

	@Id
	@Column(name = "isettings_id", unique = true, nullable = false)
	public int getSettingsID() {
		return settingsID;
	}

	public void setSettingsID(int settingsID) {
		this.settingsID = settingsID;
	}

	@Column(name = "airflow", nullable = false)
	public int getAirflow() {
		return airflow;
	}

	public void setAirflow(int airflow) {
		this.airflow = airflow;
	}

	@Column(name = "firm", nullable = false)
	public int getFirm() {
		return firm;
	}

	public void setFirm(int firm) {
		this.firm = firm;
	}

	@Column(name = "global", nullable = false)
	public int getGlobal() {
		return global;
	}

	public void setGlobal(int global) {
		this.global = global;
	}

	@Column(name = "fan_speed", nullable = false)
	public int getFanSpeed() {
		return fanSpeed;
	}

	public void setFanSpeed(int fanSpeed) {
		this.fanSpeed = fanSpeed;
	}

	@Column(name = "num_of_fan_speed", nullable = false)
	public int getNumFanSpeed() {
		return numFanSpeed;
	}

	public void setNumFanSpeed(int numFanSpeed) {
		this.numFanSpeed = numFanSpeed;
	}

	@Column(name = "height", nullable = false)
	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	@Column(name = "weight", nullable = false)
	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Column(name = "item_id", nullable = false)
	public int getItemID() {
		return itemID;
	}

	public void setItemID(int itemID) {
		this.itemID = itemID;
	}

	@Column(name = "max_power", nullable = false)
	public float getMaxPower() {
		return maxPower;
	}

	public void setMaxPower(float maxPower) {
		this.maxPower = maxPower;
	}

	@Column(name = "sound_at_max_speed", nullable = false)
	public float getMaxSpeedSound() {
		return maxSpeedSound;
	}

	public void setMaxSpeedSound(float maxSpeedSound) {
		this.maxSpeedSound = maxSpeedSound;
	}

	@Column(name = "fan_sweep_diameter", nullable = false)
	public float getFanSweepDia() {
		return fanSweepDia;
	}

	public void setFanSweepDia(float fanSweepDia) {
		this.fanSweepDia = fanSweepDia;
	}

	@Column(name = "operating_voltage", nullable = false)
	public float getVoltage() {
		return voltage;
	}

	public void setVoltage(float voltage) {
		this.voltage = voltage;
	}

	@Column(name = "brand", nullable = false)
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	@Column(name = "series", nullable = false)
	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	@Column(name = "model", nullable = false)
	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
	
	
}
