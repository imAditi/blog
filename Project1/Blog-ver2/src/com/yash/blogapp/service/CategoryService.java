package com.yash.blogapp.service;

import java.util.List;


import com.yash.blogapp.domain.Category;

public interface CategoryService {

	/**
	 * this method will create a category.  
	 * @param blog object of Category
	 */
	void create(Category blog);
	
	/**
	 * this method will destroy the category by id.
	 * @param id of category
	 */
	void destroy(int id);
	
	/**
	 * this method will edit the category.
	 * @param blog object of Category.
	 */
	void edit(Category category);
	
	/**
	 * this method will return category.
	 * @param id of category
	 * @return category object
	 */
	Category getCategory(int id);
	
	/**
	 * this will return list of categories.
	 * @return list of categories
	 */
	List<Category> listCategory();
}
