package com.yash.blogapp.test;

import com.yash.blogapp.dao.UserDAO;
import com.yash.blogapp.daoimpl.UserDAOImpl;
import com.yash.blogapp.domain.User;

public class UserDAOImplShowOperation {

	public static void main(String[] args) {
		UserDAO userDAO = new UserDAOImpl();
		User user = new User();
		user.setFirstName("dev yadav");
		user.setLastName("dev ya");
		user.setContact(25558422);
		user.setId(2);
		userDAO.update(user);
		System.out.println("update done");
	}

}
