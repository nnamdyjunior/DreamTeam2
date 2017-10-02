package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.ManufacturerDaoInterface;
import com.dreamteam.db.Manufacturer;

@Service
public class ManufacturerService implements ManufacturerServiceInterface {

	@Autowired
	private ManufacturerDaoInterface manufacturerDao;
	
	@Transactional
	public Manufacturer getManufacturer(int manuId) {
		return manufacturerDao.getManufacturer(manuId);
	}

	@Transactional
	public List<Manufacturer> getAllManufacturers() {
		return manufacturerDao.getAllManufacturers();
	}

}
