package com.yash.blogapp.test;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;

public class BlogDAOImpl_UpdateOperationTest {

	public static void main(String[] args) {
		BlogDAO blogDAO = new BlogDAOImpl();
		Blog blog  = new Blog();
		blog.setId(10);
		blog.setTitle("updated title");
		blog.setBody("updated body");
		blogDAO.update(blog);
		System.out.println("success! blog updated.");
	}

}
