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
import com.yash.blogapp.domain.Category;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.service.CategoryService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;
import com.yash.blogapp.serviceimpl.CategoryServiceImpl;


@WebServlet("/ListBlogController")
public class ListBlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BlogService blogService = new BlogServiceImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//share with service
		List<Blog> blogs = blogService.listBlogs();
		request.setAttribute("blogs", blogs);
		
		
		CategoryService categoryService = new CategoryServiceImpl();
		List<Category> categories = categoryService.listCategory();
		request.setAttribute("categories", categories);
		
		
		//send request to showblogs.jsp
		RequestDispatcher rs = request.getRequestDispatcher("allpost.jsp");
		rs.forward(request, response);


	}

}
