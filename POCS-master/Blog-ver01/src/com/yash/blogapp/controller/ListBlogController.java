package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;

/**
 * Servlet implementation class ListBlogController
 */
@WebServlet("/ListBlogController")
public class ListBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private BlogService blogService =  new BlogServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get all posts from service
		List<Blog> blogs =blogService.list();
		// share it with showblogs view
		
		request.setAttribute("blogs", blogs);
		request.setAttribute("msg", request.getParameter("msg"));
		
		getServletContext().getRequestDispatcher("/listblogs.jsp").forward(request, response);
	}

}
