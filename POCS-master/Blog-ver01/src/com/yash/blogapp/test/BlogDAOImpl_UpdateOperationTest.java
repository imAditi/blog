package com.yash.blogapp.test;

import java.text.ParseException;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;

public class BlogDAOImpl_UpdateOperationTest {

	public static void main(String[] args) throws ParseException {
		BlogDAO blogDAO = new BlogDAOImpl();
		Blog blog = new Blog();
		blog.setId(6);
		blog.setTitle("test1 updated");
		blog.setBody("Updated body of blog test1");
		blogDAO.update(blog);
		System.out.println("Success! Blog updated");
		
	

	}

}
