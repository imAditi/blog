package com.yash.blogapp.dao;

import java.util.List;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.domain.User;

/**
 * This is used to perform all CRUD operations related to Blog.
 * @author arju.yadav
 *
 */
public interface BlogDAO {
	
	/**
	 * This method will insert the Blog in database.
	 * @param blog
	 */
	void insert(Blog blog);
	
	/**
	 * It will return the found blog of the given id.
	 * @param id of blog.
	 * @return Blog if found otherwise null.
	 */
	Blog show(int id);

	/**
	 * It will update the Blog detail.
	 * @param blog
	 */
	void update(Blog blog);
	
	/**
	 * This method will delete the Blog of specified id.
	 * @param id
	 */
	void delete(int id);
	
	/**
	 * This method will return the list of Blog if found.
	 * @return 
	 * @return list of Blog if found else null.
	 */
	List<Blog> list();
}
