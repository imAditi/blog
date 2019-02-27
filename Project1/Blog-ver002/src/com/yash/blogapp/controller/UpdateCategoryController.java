package com.yash.blogapp.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Category;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.service.CategoryService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;
import com.yash.blogapp.serviceimpl.CategoryServiceImpl;
import com.yash.blogapp.util.DateUtil;


@WebServlet("/UpdateCategoryController")
public class UpdateCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BlogService blogService = new BlogServiceImpl();   
	CategoryService categoryService = new CategoryServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int id = Integer.parseInt(request.getParameter("id"));
		String date = request.getParameter("date");
		String created = new DateUtil().convertStringToDbDateString(date);
		
		System.out.println(name);
		
		Category category = categoryService.getCategory(id);
		category.setName(name);
		category.setCreated_at(created);

		categoryService.edit(category);
	
		response.sendRedirect("ListCategoryController");

	}

}
