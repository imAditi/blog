package com.yash.blogapp.serviceimpl;

import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.dao.UserDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.daoimpl.UserDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.domain.User;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO userDAO = null;

	public UserServiceImpl() {
		userDAO = new UserDAOImpl();
	}

	@Override
	public void create(User user) {
		userDAO.insert(user);
	}

	@Override
	public void destroy(int id) {
		userDAO.delete(id);
	}

	@Override
	public User getUser(int id) {
		return userDAO.show(id);
	}

	@Override
	public void edit(User user) {
		userDAO.update(user);
	}
	

	@Override
	public List<User> listUsers() {
		return userDAO.list();
	}

	@Override
	public boolean authenticate(User user) {
		boolean flag = false;
		List<User> users = listUsers();
		for (User user2 : users) {
			if(user2.getEmail().equalsIgnoreCase(user.getEmail()) && user2.getPassword().equalsIgnoreCase(user.getPassword())) {
				flag = true;
			}
		}
		System.out.println(flag);
		return flag;
	}
	
	
	@Override
	public User getUser(String email) {
		User user = new User();
		List<User> users = listUsers();
		for (User user2 : users) {
			if(user2.getEmail().equalsIgnoreCase(email)) {
				user = user2;
			}
		}
		return user;
	}


	

}
