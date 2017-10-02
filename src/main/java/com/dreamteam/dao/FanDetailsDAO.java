package com.dreamteam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.FanDetails;

@Repository
@Transactional
public class FanDetailsDAO implements FanDetailsDaoInterface {

	@Autowired
	private SessionFactory session;
	
	@Transactional
	public FanDetails getFanDetails(int itemId) {
		return (FanDetails)session.getCurrentSession().get(FanDetails.class, itemId);
	}

	@Transactional
	public List<FanDetails> getAllFanDetails() {
		return session.getCurrentSession().createQuery("from FanDetails").list();
	}

}
