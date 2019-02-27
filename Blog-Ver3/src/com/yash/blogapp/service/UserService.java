package com.yash.blogapp.service;

import java.util.List;
import com.yash.blogapp.domain.User;

public interface UserService {
	
	public static int ADMIN = 1;
	public static int AUTHOR = 2;
	public static int REGISTERED = 3;
	
	/**
	 * This method will create a new user.
	 * @param user object of User
	 */
	void create(User user);
	
	/**
	 * This method will delete the user by id.
	 * @param id of user
	 */
	void destroy(int id);
	
	/**
	 * This method will edit the user.
	 * @param user object of User
	 */
	void edit(User user);
	
	/**
	 * This method will return user of given id.
	 * @param id of user.
	 * @return user of given id.
	 */
	User getUser(int id);
	
	/**
	 * This will show the list of users.
	 * @return list of users.
	 */
	List<User> listUsers();

	/**
	 * This is used to authenticate the user
	 * @param email
	 * @param password
	 * @return
	 */
	User authenticateUser(String email, String password);
}
