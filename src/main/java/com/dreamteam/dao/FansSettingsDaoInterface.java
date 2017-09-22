package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.FanSettings;

public interface FansSettingsDaoInterface {

	public FanSettings getFanSettings(int settingsId);
	public List<FanSettings> getAllFanSettings();
}
