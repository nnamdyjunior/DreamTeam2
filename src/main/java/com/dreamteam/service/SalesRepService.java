package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.SalesRepDaoInterface;
import com.dreamteam.db.SalesRep;

@Service
public class SalesRepService implements SalesRepServiceInterface {

	@Autowired
	private SalesRepDaoInterface salesRepDao;
	
	@Transactional
	public SalesRep getSalesRep(int saleId) {
		return salesRepDao.getSalesRep(saleId);
	}

	@Transactional
	public List<SalesRep> getAllSalesReps() {
		return salesRepDao.getAllSalesReps();
	}

}
