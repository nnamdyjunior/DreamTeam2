package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.FansSettingsDaoInterface;
import com.dreamteam.db.FanSettings;

@Service
public class FansSettingsService implements FansSettingsServiceInterface {

	@Autowired
	FansSettingsDaoInterface fanssettingsdao;
	
	@Transactional
	public FanSettings getFanSettings(int settingsId) {
		return fanssettingsdao.getFanSettings(settingsId);
	}

	@Transactional
	public List<FanSettings> getAllFanSettings() {
		return fanssettingsdao.getAllFanSettings();
	}

}
