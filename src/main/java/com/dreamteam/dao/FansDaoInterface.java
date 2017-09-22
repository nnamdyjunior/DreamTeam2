package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.Fan;


public interface FansDaoInterface {
	public Fan getFan(int itemID);
	public List<Fan> getAllFans();
}
