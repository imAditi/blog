package com.yash.blogapp.test;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;

public class BlogDAOImpl_ShowOperationTest {

	public static void main(String[] args) throws ParseException {
			BlogDAO blogDAO = new BlogDAOImpl();
			Blog blog  = new Blog();
			blog = blogDAO.show(10);
			System.out.println("Title :" +blog.getTitle());
			System.out.println("body :" +blog.getBody());
			System.out.println("created_at :" +blog.getCreated_at());
			System.out.println("updated_at :" +blog.getUpdated_at());
			
			System.out.println(blogDAO.list());
		}
	}


