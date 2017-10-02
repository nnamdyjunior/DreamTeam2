package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.FanDetailsDaoInterface;
import com.dreamteam.db.FanDetails;

@Service
public class FanDetailsService implements FanDetailsServiceInterface {

	@Autowired
	private FanDetailsDaoInterface fanDetailsService;
	
	@Transactional
	public FanDetails getFanDetails(int itemId) {
		return fanDetailsService.getFanDetails(itemId);
	}

	@Transactional
	public List<FanDetails> getAllFanDetails() {
		return fanDetailsService.getAllFanDetails();
	}

}
