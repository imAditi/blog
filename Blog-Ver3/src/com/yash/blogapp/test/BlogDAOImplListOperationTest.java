package com.yash.blogapp.test;


import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImplListOperationTest {

	public static void main(String[] args) {
		
		BlogDAO blogDao = new BlogDAOImpl();
		List<Blog> blogs = blogDao.list();
		for (Blog blog : blogs) {
			System.out.println("Title : "+blog.getTitle());
			System.out.println("Body : "+blog.getBody());
			
			String created_date = new DateUtil().convertDateStringToString(blog.getCreated_at());
			String updated_date = new DateUtil().convertDateStringToString(blog.getUpdated_at());
			
			System.out.println("Created at : "+created_date);
			System.out.println("Updated at : "+updated_date);
		}
		
		
	}

}
