package com.yash.blogapp.dao;

import java.util.List;

import com.yash.blogapp.domain.Blog;

/**
 * this is used to perform all CRUD operations related to BLOG
 * @author sharma.pankaj
 *
 */
public interface BlogDAO {
	
	/**
	 * insert method will insert the blog in database
	 * @param blog
	 */
	void insert(Blog blog);
	
	/**
	 * show mehtod will return the found blog based on id
	 * @param id of blog
	 * @return blog if found otherwise null
	 */
	Blog show(int id);
	
	/**
	 * update method will update the blog detail
	 * @param blog
	 */
	void update(Blog blog);
	
	/**
	 * this method will delete the blog of specified id
	 * @param id
	 */
	void delete(int id);
	
	/**
	 * this method will return the list of blogs
	 * @return list of blogs if found othrwise null
	 */
	List<Blog> list();

}
