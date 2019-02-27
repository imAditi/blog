package com.yash.blogapp.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import com.yash.blogapp.dao.UserDAO;
import com.yash.blogapp.daoimpl.UserDAOImpl;
import com.yash.blogapp.domain.User;
import com.yash.blogapp.util.DateUtil;


public class UserDAOImplInsertoperationTest {
	public static void main(String[] args) {
	
		UserDAO userDAO = new UserDAOImpl();
		User user = new User();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String created_at = new DateUtil().convertDateToString(formatter,new Date());
		String updated_at = new DateUtil().convertDateToString(formatter,new Date());
		user.setFirstName("dev");
		user.setLastName("ya");
		user.setContact(966);
		user.setEmail("dev.yadav");
		user.setPassword("123");
		user.setCreated_at(created_at);
		user.setUpdated_at(updated_at);
		userDAO.insert(user);
		System.out.println("user created.");
		
		
		
		
	}
}
