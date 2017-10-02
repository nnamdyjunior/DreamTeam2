package com.dreamteam.dao;

import java.util.List;

import com.dreamteam.db.Users;

public interface UsersDAOInterface {

	public Users getUser(int userId);
	public List<Users> getAllUsers();
}
