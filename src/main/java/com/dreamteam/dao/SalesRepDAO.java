package com.dreamteam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.SalesRep;

@Repository
@Transactional
public class SalesRepDAO implements SalesRepDaoInterface {

	@Autowired
	private SessionFactory session;
	
	@Transactional
	public SalesRep getSalesRep(int saleId) {
		return (SalesRep)session.getCurrentSession().get(SalesRep.class, saleId);
	}

	@Transactional
	public List<SalesRep> getAllSalesReps() {
		return session.getCurrentSession().createQuery("from SalesRep").list();
	}

}
