package com.dreamteam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dreamteam.db.Fan;
import com.dreamteam.db.FanSettings;
import com.dreamteam.service.FansServiceInterface;
import com.dreamteam.service.FansSettingsServiceInterface;


@Controller
public class FansController {
	
	@Autowired
	FansServiceInterface fansService;
	
	@Autowired
	FansSettingsServiceInterface fansSettingsService;
	
	@RequestMapping("/fans")
	public String allProj(Map<String, Object> map) {
		Fan fan = new Fan();
		FanSettings fanSettings = new FanSettings();
		map.put("fan", fan);
		map.put("fansList", fansService.getAllFans());
		map.put("fanSettings", fanSettings);
		map.put("fansSettingsList", fansSettingsService.getAllFanSettings());
		
		
		return "hvacFans";
	}
}
