package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BlogService blogService = new BlogServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Blog> blogs = blogService.listBlogs();

		request.setAttribute("blogs", blogs);

		RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
		rs.forward(request, response);

	}
}
