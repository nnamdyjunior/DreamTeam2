package com.dreamteam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dreamteam.db.Users;

@Repository
@Transactional
public class UsersDAO implements UsersDAOInterface {

	@Autowired
	private SessionFactory session;
	
	public Users getUser(int userId) {
		return (Users)session.getCurrentSession().get(Users.class, userId);
	}

	public List<Users> getAllUsers() {
		return session.getCurrentSession().createQuery("from Users").list();
	}

}
