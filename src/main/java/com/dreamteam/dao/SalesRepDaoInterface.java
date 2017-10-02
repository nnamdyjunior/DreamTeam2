package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.SalesRep;

public interface SalesRepDaoInterface {
	public SalesRep getSalesRep(int saleId);
	public List<SalesRep> getAllSalesReps();
}
