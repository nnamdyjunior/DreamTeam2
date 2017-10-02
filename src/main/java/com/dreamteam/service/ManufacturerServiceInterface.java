package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.Manufacturer;

public interface ManufacturerServiceInterface {
	public Manufacturer getManufacturer(int manuId);
	public List<Manufacturer> getAllManufacturers();
}
