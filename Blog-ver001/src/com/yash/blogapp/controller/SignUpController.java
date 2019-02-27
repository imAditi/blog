package com.yash.blogapp.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yash.blogapp.domain.User;
import com.yash.blogapp.service.UserService;
import com.yash.blogapp.serviceimpl.UserServiceImpl;
import com.yash.blogapp.util.DateUtil;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	UserService userService = new UserServiceImpl();
	User user = new User();
	user.setFirstName(request.getParameter("firstName"));
	user.setLastName(request.getParameter("lastName"));
	user.setContact(Integer.parseInt(request.getParameter("contact")));
	user.setEmail(request.getParameter("email"));
	user.setPassword(request.getParameter("password"));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
	user.setCreated_at(new DateUtil().convertDatetoString(formatter, new Date()));
	user.setUpdated_at(new DateUtil().convertDatetoString(formatter, new Date()));
	userService.create(user);
	response.sendRedirect("login.jsp");
	
	}

}
