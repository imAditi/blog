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
 * Servlet implementation class EditBlogController
 */
@WebServlet("/EditBlogController")
public class EditBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlogService blogService =  new BlogServiceImpl();
		Blog blog = new Blog();
		blog.setId(Integer.parseInt(request.getParameter("id")));
		blog.setTitle(request.getParameter("title"));
		blog.setBody(request.getParameter("body"));
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   		blog.setUpdated_at(new DateUtil().convertDateToString(formatter, new Date()));
   		blogService.edit(blog);
   		response.sendRedirect("./ListBlogController?msg=Success! Blog Updated");
	}

}
