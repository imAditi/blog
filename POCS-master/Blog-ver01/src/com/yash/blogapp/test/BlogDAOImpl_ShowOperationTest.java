package com.yash.blogapp.test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImpl_ShowOperationTest {

	public static void main(String[] args) throws ParseException {
		BlogDAO blogDAO = new BlogDAOImpl();
		Blog blog = blogDAO.show(8);
		System.out.println("Title : "+blog.getTitle());
		System.out.println("Body : "+blog.getBody());
		
	
		
		
		SimpleDateFormat sdf =  new SimpleDateFormat("dd-mm-yyyy HH:mm");
		Date date = sdf.parse(blog.getCreated_at());
		
		
//		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");
		String formatedDate = sdf.format(date);
		System.out.println(formatedDate);
		
	

	}

}
