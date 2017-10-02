package com.dreamteam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.dao.UsersDAOInterface;
import com.dreamteam.db.Users;

@Service
public class UsersService implements UsersServiceInterface {

	@Autowired
	private UsersDAOInterface usersDao;
	
	@Transactional
	public Users getUser(int userId) {
		return usersDao.getUser(userId);
	}

	@Transactional
	public List<Users> getAllUsers() {
		return usersDao.getAllUsers();
	}

}
