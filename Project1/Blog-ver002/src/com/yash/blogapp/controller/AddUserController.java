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


@WebServlet("/AddUserController")
public class AddUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			Long contact = Long.parseLong(request.getParameter("phone"));
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String created_at = new DateUtil().convertDateToString(formatter,new Date());
			String updated_at = new DateUtil().convertDateToString(formatter,new Date());
			
			String skills = request.getParameter("skills");
			
			User user = new User();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setEmail(email);
			user.setContact(contact);
			user.setCreated_at(created_at);
			user.setUpdated_at(updated_at);
			user.setSkills(skills);
			userService.create(user);
//			System.out.println(user.getFirstName());
//			System.out.println(user.getLastName());
			request.getRequestDispatcher("userprofile.jsp").forward(request, response);
			
			
	}

}
