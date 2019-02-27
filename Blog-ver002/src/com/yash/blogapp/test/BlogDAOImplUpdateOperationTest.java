package com.yash.blogapp.test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.domain.Category;
import com.yash.blogapp.serviceimpl.CategoryServiceImpl;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImplUpdateOperationTest {

	public static void main(String[] args) {
		
		BlogDAO blogDao = new BlogDAOImpl();
		Blog blog = new Blog();
		blog.setId(21);
		blog.setTitle("Test1");
		blog.setBody("This is updated content of test 1. This is my testing of dao layer");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String updated_at = new DateUtil().convertDateToString(formatter,new Date());
		blog.setUpdated_at(updated_at);
		List<Integer> category = new ArrayList<>();
		category.add(1);
		category.add(2);
		category.add(3);
		blog.setCategory(category);
		
		//Category category = new CategoryServiceImpl().show();
		//category.add(e)
		blogDao.update(blog);
		
		System.out.println("Success! Blog updated.");
	}

}
