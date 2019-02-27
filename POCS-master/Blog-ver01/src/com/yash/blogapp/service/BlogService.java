package com.yash.blogapp.service;

import java.util.List;

import com.yash.blogapp.domain.Blog;

/**
 * This is used to perform Business Logic related with blog
 * 
 * @author sharma.pankaj
 *
 */
public interface BlogService {

	/**
	 * this method should first check if blog title is already availble or not.
	 * if it is already available return error message, otherwise successmessage
	 * 
	 * @param blog
	 */
	void create(Blog blog);

	void destroy(int id);

	Blog getBlog(int id);

	void edit(Blog blog);

	List<Blog> list();

}
