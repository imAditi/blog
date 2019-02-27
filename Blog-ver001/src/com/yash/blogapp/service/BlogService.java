package com.yash.blogapp.service;

import java.util.List;

import com.yash.blogapp.domain.Blog;

public interface BlogService {
	
	void create(Blog blog);

	void destroy(int id);

	Blog getBlog(int id);

	void edit(Blog blog);

	List<Blog> listblogs();

}
