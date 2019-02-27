package com.yash.blogapp.serviceimpl;

import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;

public class BlogServiceImpl implements BlogService {
	
	private BlogDAO blogDAO = null;
	
	public BlogServiceImpl() {
		blogDAO = new BlogDAOImpl(); // DI
	}

	@Override
	public void create(Blog blog) {
		blogDAO.insert(blog);
		
	}

	@Override
	public void destroy(int id) {
		blogDAO.delete(id);
	}

	@Override
	public Blog getBlog(int id) {
		
		return blogDAO.show(id);
	}

	@Override
	public void edit(Blog blog) {
		blogDAO.update(blog);

	}

	@Override
	public List<Blog> list() {
		
		return blogDAO.list();
	}

}
