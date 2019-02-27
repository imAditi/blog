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

@WebServlet("/UserRegistrationController")
public class UserRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		User user = new User();
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setContact(Long.parseLong(request.getParameter("contact")));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String created_at = new DateUtil().convertDateToString(formatter,new Date());
		String updated_at = new DateUtil().convertDateToString(formatter,new Date());
		
		user.setCreated_at(created_at);
		user.setUpdated_at(updated_at);
		userService.create(user);
		response.sendRedirect("login.jsp");
	}

}
