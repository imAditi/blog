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
import com.yash.blogapp.util.DateUtil;


@WebServlet("/HomeBlogController")
public class HomeBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 BlogService blogService = new BlogServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get all posts from service
		DateUtil dateUtil = new DateUtil();
		Blog blog = new Blog();
		BlogService blogService = new BlogServiceImpl();
		List<Blog> blogs = blogService.listblogs();
		request.setAttribute("blogs", blogs);
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}

}
