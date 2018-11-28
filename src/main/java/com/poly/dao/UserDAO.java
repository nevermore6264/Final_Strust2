package com.poly.dao;

import com.poly.entity.User;

public interface UserDAO {
	
	User findOne(String email, String password);
	
	User findOne(String email);
	
	void create(User user);
	
}
