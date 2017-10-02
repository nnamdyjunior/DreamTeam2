package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.SalesRep;

public interface SalesRepServiceInterface {
	public SalesRep getSalesRep(int saleId);
	public List<SalesRep> getAllSalesReps();
}
