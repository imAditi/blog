package com.yash.blogapp.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImplInsertOperationTest {

	public static void main(String[] args) {
		
		BlogDAO blogDao = new BlogDAOImpl();
		Blog blog = new Blog();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String created_at = new DateUtil().convertDateToString(formatter,new Date());
		String updated_at = new DateUtil().convertDateToString(formatter,new Date());
		
		blog.setTitle("Test4");
		blog.setBody("This is content of test4. This is my testing of dao layer");
		blog.setCreated_at(created_at);
		blog.setUpdated_at(updated_at);
		blogDao.insert(blog);
		System.out.println("Success! Blog created.");
	}

}
