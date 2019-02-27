package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.domain.User;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.service.UserService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;
import com.yash.blogapp.serviceimpl.UserServiceImpl;

@WebServlet("/HomeBlogController")
public class HomeBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private BlogService blogService= new BlogServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Blog> blogs = blogService.listAllBlogs();
		
		request.setAttribute("blogs", blogs);
	request.getRequestDispatcher("home2.jsp").forward(request,response);
		
	}

	
}
