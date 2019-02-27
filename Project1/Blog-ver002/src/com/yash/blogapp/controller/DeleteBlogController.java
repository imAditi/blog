package com.yash.blogapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;


@WebServlet("/DeleteBlogController")
public class DeleteBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlogService blogService = new BlogServiceImpl();
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		blogService.destroy(id);
		RequestDispatcher rs = request.getRequestDispatcher("ListBlogController");
		rs.forward(request, response);
	}

}
