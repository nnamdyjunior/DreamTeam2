package com.dreamteam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.Manufacturer;

@Repository
@Transactional
public class ManufacturerDAO implements ManufacturerDaoInterface {

	@Autowired
	private SessionFactory session;
	
	@Transactional
	public Manufacturer getManufacturer(int manuId) {
		return (Manufacturer)session.getCurrentSession().get(Manufacturer.class, manuId);
	}

	@Transactional
	public List<Manufacturer> getAllManufacturers() {
		return session.getCurrentSession().createQuery("from Manufacturer").list();
	}

}
