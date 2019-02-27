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
import com.yash.blogapp.util.DateUtil;


@WebServlet("/ViewBlogController")
public class ViewBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlogService blogService = new BlogServiceImpl();  
		int id = Integer.parseInt(request.getParameter("id"));
		Blog blog = blogService.getBlog(id);
		String dateDb = blog.getCreated_at();
		String date = new DateUtil().convertDateStringToString(dateDb);
		blog.setCreated_at(date);
		
		dateDb = blog.getUpdated_at();
		date = new DateUtil().convertDateStringToString(dateDb);
		blog.setUpdated_at(date);
		
		request.setAttribute("blog", blog);
		
		request.getRequestDispatcher("view.jsp").forward(request, response);
	}

}
