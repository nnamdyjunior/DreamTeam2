package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.Manufacturer;

public interface ManufacturerDaoInterface {
	public Manufacturer getManufacturer(int manuId);
	public List<Manufacturer> getAllManufacturers();
}
