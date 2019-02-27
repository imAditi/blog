package com.yash.blogapp.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImpl_InsertOperationTest {

	public static void main(String[] args) {
		BlogDAO blogDAO = new BlogDAOImpl();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Blog blog = new Blog();
		
		String created_at =  new DateUtil().convertDateToString(formatter,new Date());
		String updated_at =  new DateUtil().convertDateToString(formatter, new Date());
		blog.setTitle("Title 4");
		blog.setBody("This is the content of title 4. This is my testing of dao layer.");
		blog.setCreated_at(created_at);
		blog.setUpdated_at(updated_at);
		blogDAO.insert(blog);
		System.out.println("Success! Blog Created");

	}

}
