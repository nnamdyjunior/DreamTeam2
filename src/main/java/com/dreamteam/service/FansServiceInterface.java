package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.Fan;

public interface FansServiceInterface {
	public Fan getFan(int itemID);
	public List<Fan> getAllFans();
}
