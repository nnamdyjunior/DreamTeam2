package com.dreamteam.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.Users;

@Service
public class LoginService implements LoginServiceInterface{
	
	@Autowired
	UsersServiceInterface usersService;
	
	@Transactional
	public String verify(String username, String password) {
		Map<String, String> users = new HashMap<>();
		for(Users x : usersService.getAllUsers()) {
			users.put(x.getUserName(), x.getPassword());
		}
		
		if(password.length()<5) return "password must be greater than 5 characters!";
		else {
			if(!password.equals(users.getOrDefault(username, "-1"))){
				return "Incorrect username/password!";
			}
			else {
				return "pass";
			}
		}
		
	}
}
