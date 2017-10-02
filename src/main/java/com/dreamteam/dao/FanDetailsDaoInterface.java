package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.FanDetails;

public interface FanDetailsDaoInterface {
	public FanDetails getFanDetails(int itemId);
	public List<FanDetails> getAllFanDetails();
}
