package com.yash.blogapp.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

/**
 * Servlet implementation class UpdateBlogController
 */
@WebServlet("/UpdateBlogController")
public class UpdateBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  BlogService blogService = new BlogServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		int id = Integer.parseInt(request.getParameter("id"));
		String created = request.getParameter("created_at");
		
		Blog blog = new Blog();
		blog.setId(id);
		blog.setTitle(title);
		blog.setBody(body);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String updated = new DateUtil().convertDatetoString(formatter, new Date());
		blog.setUpdated_at(updated);
		blog.setCreated_at(created);
		
		blogService.edit(blog);

		
	 RequestDispatcher rs=	request.getRequestDispatcher("ListBlogController");
	 rs.forward(request, response);
	 
	}

}
