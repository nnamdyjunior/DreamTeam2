package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.FanSettings;

public interface FansSettingsServiceInterface {

	public FanSettings getFanSettings(int settingsId);
	public List<FanSettings> getAllFanSettings();
}
