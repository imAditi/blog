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


@WebServlet("/AddPostController")
public class AddPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       BlogService blogService = new BlogServiceImpl();
   
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("post-title");
		String body = request.getParameter("Description");
		String categories[] =  request.getParameterValues("select-category");

		Blog blog = new Blog();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		blog.setTitle(title);
		blog.setBody(body.trim());		
		blog.setCreated_at(new DateUtil().convertDateToString(formatter,new Date()));
		blog.setUpdated_at(new DateUtil().convertDateToString(formatter,new Date()));
		
		blogService.createBlog(blog,categories);
		System.out.println("Blog Cretaed---------------------");
		request.getRequestDispatcher("/ListBlogController").forward(request, response);;
	
	}

}
