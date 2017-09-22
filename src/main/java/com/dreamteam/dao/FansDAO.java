package com.dreamteam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.Fan;

@Repository
@Transactional
public class FansDAO implements FansDaoInterface{

	@Autowired
	private SessionFactory session;
	
	public Fan getFan(int itemID) {
		return (Fan)session.getCurrentSession().get(Fan.class, itemID);
	}

	public List<Fan> getAllFans() {
		return session.getCurrentSession().createQuery("from Fan").list();
	}
	//write your code here
}
