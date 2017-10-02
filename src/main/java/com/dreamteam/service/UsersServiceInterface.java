package com.dreamteam.service;

import java.util.List;

import com.dreamteam.db.Users;

public interface UsersServiceInterface {
	public Users getUser(int userId);
	public List<Users> getAllUsers();
}
