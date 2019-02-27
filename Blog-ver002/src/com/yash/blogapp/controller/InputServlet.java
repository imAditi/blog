package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.ArrayList;
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
import com.yash.blogapp.util.DateUtil;


@WebServlet("/InputServlet")
public class InputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BlogService blogService = new BlogServiceImpl();   
	CategoryService categoryService = new CategoryServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	
	String title = request.getParameter("title");
	int id = Integer.parseInt(request.getParameter("id"));
	String date = request.getParameter("date");
	String created = new DateUtil().convertStringToDbDateString(date);
	String category= request.getParameter("category");
	String categoriesArray[] = category.split(" ");
	List categoryList = new ArrayList();
	for (String string : categoriesArray) {
		categoryList.add(string);
	}
	List<Integer> c = new ArrayList<>();
	List<Category> categories = categoryService.listCategory();
	for (Category cat : categories) {
		for (String string : categoriesArray) {
			if(cat.getName().equalsIgnoreCase(string)) {
				c.add(cat.getId());
			}
		}
	}
	
	Blog blog = blogService.getBlog(id);
	blog.setTitle(title);
	blog.setCreated_at(created);
	blog.setCategory(c);
	blogService.edit(blog);
	
	response.sendRedirect("ListBlogController");
	}

}
