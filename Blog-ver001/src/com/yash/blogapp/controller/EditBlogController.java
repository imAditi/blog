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
 * Servlet implementation class EditBlogController
 */
@WebServlet("/EditBlogController")
public class EditBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	BlogService blogService =  new BlogServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Blog blog = blogService.getBlog(id);
		String dateDB = blog.getCreated_at();
		String date = new DateUtil().convertDateStringToString(dateDB);
		blog.setUpdated_at(date);
		
		request.setAttribute("blog", blog);
		
		RequestDispatcher rs = request.getRequestDispatcher("editblog.jsp");
		rs.forward(request, response);
	}

}