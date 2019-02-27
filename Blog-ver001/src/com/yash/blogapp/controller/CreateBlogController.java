package com.yash.blogapp.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;
import com.yash.blogapp.util.DateUtil;

/**
 * Servlet implementation class CreateBlogController
 */
@WebServlet("/CreateBlogController")
public class CreateBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlogService blogService = new BlogServiceImpl();
		Blog blog = new Blog();
		String title= request.getParameter("title");
		String body = request.getParameter("body");
		blog.setTitle(title);
		blog.setBody(body);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		blog.setCreated_at(new DateUtil().convertDatetoString(formatter, new Date()));
		blog.setUpdated_at(new DateUtil().convertDatetoString(formatter, new Date()));
		blogService.create(blog);
		response.sendRedirect("ListBlogController");
	}

}
