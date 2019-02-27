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
	
	/**
	 * this method will return list all deleted blogs 
	 * @return list of all deleted blogs
	 */
	List<Blog> deletedBlog();
	/**
	 * this method will return list of deleted blogs according to month
	 * @return the list of deleted blogs 
	 */
	 List<Integer> deletedBlogAcrMonths();
	 /**
	  *  this method will return list of created blogs according to month 
	  * @return the list of created blogs
	  */
	List<Integer> createdBlogAcrMonths();
	/**
	 * this method will return count of created blogs according to month 
	 * @return the size of created blogs according to month
	 */
	 int createdBlogAcrMonthsCount();
	 /**
	  * this method will return count of deleted blogs according to month 
	  * @return  the size of deleted blogs according to month
	  */
	 int deletedBlogAcrMonthsCount();
	 
	 public List<Blog> listAllBlogs();
	 
	 void createBlog(Blog blog, String[] categories);
}
