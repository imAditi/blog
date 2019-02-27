package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Category;
import com.yash.blogapp.service.CategoryService;
import com.yash.blogapp.serviceimpl.CategoryServiceImpl;


@WebServlet("/ListCategoryController")
public class ListCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryService categoryService = new CategoryServiceImpl();
		List<Category> categories = categoryService.listCategory();
		request.setAttribute("categories", categories);
		
		RequestDispatcher rs = request.getRequestDispatcher("addnewcategory.jsp");
		rs.forward(request, response);
	}
	
}
