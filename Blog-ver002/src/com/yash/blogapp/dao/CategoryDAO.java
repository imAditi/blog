package com.yash.blogapp.dao;

import java.util.List;

import com.yash.blogapp.domain.Category;

/**
 * This is used to perform all CRUD operations related to Category.
 * @author arju.yadav
 *
 */
public interface CategoryDAO {
	
	/**
	 * This method will insert the Category in database.
	 * @param blog
	 */
	void insert(Category category);
	
	/**
	 * It will return the found category of the given id.
	 * @param id of category.
	 * @return Category if found otherwise null.
	 */
	Category show(int id);

	/**
	 * It will update the Category detail.
	 * @param blog
	 */
	void update(Category category);
	
	/**
	 * This method will delete the Category of specified id.
	 * @param id
	 */
	void delete(int id);
	
	/**
	 * This method will return the list of Category if found.
	 * @return 
	 * @return list of Category if found else null.
	 */
	List<Category> list();
}