package com.yash.blogapp.test;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.dao.UserDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.daoimpl.UserDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.domain.User;
import com.yash.blogapp.util.DateUtil;
import com.yash.blogapp.util.SimpleJDBCUtil;

public class BlogDAOImpl_InsertOperationTest {

	public static void main(String[] args) throws SQLException {
		UserDAO userDAO = new UserDAOImpl();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		User user = new User();
		String created_at =new DateUtil().convertDatetoString(formatter,new Date());
		String updated_at=new DateUtil().convertDatetoString(formatter,new Date());
		user.setFirstName("adarsh");
		user.setLastName("borwal");
		user.setContact(2345678);
		user.setEmail("adarsh.borwal@yash.com");
		user.setPassword("123456");
		
		user.setCreated_at(created_at);
		user.setUpdated_at(updated_at);
		userDAO.insert(user);
		System.out.println("success");
		
		
		
		
		
//		BlogDAO blogDAO = new BlogDAOImpl();
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
//		Blog blog = new Blog();
//		
//		String created_at =new DateUtil().convertDatetoString(formatter,new Date());
//		String updated_at=new DateUtil().convertDatetoString(formatter,new Date());
//		blog.setTitle("title of 4");
//		blog.setBody("body of 4");
//		blog.setCreated_at(created_at);
//		blog.setUpdated_at(updated_at);
//		blogDAO.insert(blog);
//		System.out.println("success! blog created");
}

}
