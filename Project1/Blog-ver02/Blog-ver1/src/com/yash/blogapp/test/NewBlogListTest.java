package com.yash.blogapp.test;

import java.util.List;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;

public class NewBlogListTest {

	public static void main(String[] args) {
		BlogService blogService=new BlogServiceImpl();
		List<Blog> blogs = blogService.list(1);
		System.out.println(blogs.size());

	}

}
