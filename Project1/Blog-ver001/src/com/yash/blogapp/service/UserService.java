package com.yash.blogapp.service;

import java.util.List;

import com.yash.blogapp.domain.User;



public interface UserService {
	
	void create(User user);

	void destroy(int id);

	User getUser(int id);

	void edit(User user);
	
	User getUser(String email);
	boolean authenticate(User user);
	List<User> listUsers();

}
