package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.FansDaoInterface;
import com.dreamteam.db.Fan;

@Service
public class FansService implements FansServiceInterface{
	
	@Autowired
	FansDaoInterface fansdao;

	@Transactional
	public Fan getFan(int itemID) {
		return fansdao.getFan(itemID);
	}

	@Transactional
	public List<Fan> getAllFans() {
		return fansdao.getAllFans();
	}
	//write your code here
}
