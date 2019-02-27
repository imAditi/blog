package com.yash.blogapp.service;

import java.util.List;

import com.yash.blogapp.domain.Blog;

public interface BlogService {
	
	/**
	 * this method will create a blog.  
	 * @param blog object of Blog
	 */
	void create(Blog blog);
	
	/**
	 * this method will destroy the blog by id.
	 * @param id of blog
	 */
	void destroy(int id);
	
	/**
	 * this method will edit the blog.
	 * @param blog object of Blog.
	 */
	void edit(Blog blog);
	
	/**
	 * this method will return blog.
	 * @param id of blog
	 * @return blog object
	 */
	Blog getBlog(int id);
	
	/**
	 * this will return list of blogs.
	 * @return list of blogs
	 */
	List<Blog> listBlogs();
}
