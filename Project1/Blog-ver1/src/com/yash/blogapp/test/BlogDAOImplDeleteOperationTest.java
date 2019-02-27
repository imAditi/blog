package com.yash.blogapp.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImplDeleteOperationTest {

	public static void main(String[] args) {
		
		BlogDAO blogDao = new BlogDAOImpl();
		blogDao.delete(5);
	}

}
