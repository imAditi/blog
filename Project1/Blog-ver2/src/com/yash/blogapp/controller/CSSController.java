package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;

/**
 * Servlet implementation class CSSController
 */
@WebServlet("/CSSController")
public class CSSController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CSSController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlogService blogService = new BlogServiceImpl();
		int cat_id = Integer.parseInt(request.getParameter("category_id"));
	System.out.println(cat_id);
		
		List<Blog> blogs = blogService.list(2);
		request.setAttribute("blogs", blogs);
		request.getRequestDispatcher("CSS.jsp").forward(request,response);
	}

}
