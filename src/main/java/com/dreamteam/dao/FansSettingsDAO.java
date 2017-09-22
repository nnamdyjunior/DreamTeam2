package com.dreamteam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.FanSettings;

@Repository
@Transactional
public class FansSettingsDAO implements FansSettingsDaoInterface {

	@Autowired
	private SessionFactory session;
	
	public FanSettings getFanSettings(int settingsId) {
		return (FanSettings)session.getCurrentSession().get(FanSettings.class, settingsId);
	}

	public List<FanSettings> getAllFanSettings() {
		return session.getCurrentSession().createQuery("from FanSettings").list();
	}

}
