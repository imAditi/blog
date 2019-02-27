package com.yash.blogapp.dao;

import java.util.List;

import com.yash.blogapp.domain.User;

/**
 * this is used to perform all CRUD operations related to user
 * @author aditi.jain
 *
 */
public interface UserDAO {
	/**
	 * insert method will insert the user in database
	 * @param user
	 */
	void insert(User user);
	/**
	 * show method will return the found user based on id
	 * @param id of user
	 * @return user if found otherwise null
	 */
	User show (int id);
	/**
	 * update method will update the user detail
	 * @param user
	 */
	void update(User user);
	/**
	 * this method will delete the user of specified id
	 * @param id
	 */
	void delete(int id);
	/**
	 * this method will return the list of users
	 * @return list of users if found otherwise null
	 */
	List<User> list();

}
