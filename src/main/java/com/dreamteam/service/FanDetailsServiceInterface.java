package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.FanDetails;

public interface FanDetailsServiceInterface {
	public FanDetails getFanDetails(int itemId);
	public List<FanDetails> getAllFanDetails();
}
