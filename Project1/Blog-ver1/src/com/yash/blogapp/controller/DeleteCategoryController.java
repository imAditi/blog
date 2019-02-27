package com.yash.blogapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.service.CategoryService;
import com.yash.blogapp.serviceimpl.CategoryServiceImpl;


@WebServlet("/DeleteCategoryController")
public class DeleteCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryService categoryService = new CategoryServiceImpl();
		int id = Integer.parseInt(request.getParameter("id"));
		
		categoryService.destroy(id);
		
		RequestDispatcher rs = request.getRequestDispatcher("ListCategoryController");
		rs.forward(request, response);
	}

}
