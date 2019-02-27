package com.yash.blogapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;

/**
 * Servlet implementation class ViewBLogController
 */
@WebServlet("/ViewBlogController")
public class ViewBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Blog blog = new Blog();
		BlogService blogService = new BlogServiceImpl();
		int id = Integer.parseInt(request.getParameter("id"));
		blog = blogService.getBlog(id);
		request.getSession().setAttribute("blog", blog);
		request.getRequestDispatcher("viewblog.jsp").forward(request, response);

	}
}
