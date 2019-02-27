package com.yash.blogapp.serviceimpl;

import java.util.List;

import com.yash.blogapp.dao.CategoryDAO;

import com.yash.blogapp.daoimpl.CategoryDAOImpl;

import com.yash.blogapp.domain.Category;

import com.yash.blogapp.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	CategoryDAO categoryDao = null;

	public CategoryServiceImpl() {
		categoryDao = new CategoryDAOImpl(); // dependency injection
	}

	@Override
	public void create(Category category) {

		categoryDao.insert(category);

	}

	@Override
	public void destroy(int id) {

		categoryDao.delete(id);

	}

	@Override
	public void edit(Category category) {

		categoryDao.update(category);

	}

	@Override
	public Category getCategory(int id) {

		return categoryDao.show(id);
	}

	@Override
	public List<Category> listCategory() {

		return categoryDao.list();
	}

}
