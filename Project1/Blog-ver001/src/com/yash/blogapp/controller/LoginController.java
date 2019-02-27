package com.yash.blogapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yash.blogapp.domain.User;
import com.yash.blogapp.service.UserService;
import com.yash.blogapp.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   final int admin =1;
   final int author =1;
   final int registerUser =1;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
        User user = new User();
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        boolean flag = userService.authenticate(user);
        user = userService.getUser(request.getParameter("email"));
        if (flag == true) {
            HttpSession session = request.getSession();
            session.setAttribute("sessionId", session.getId());
            session.setAttribute("user", user);
            session.setAttribute("id", user.getId());
            if (user.getRole() == admin) {
                response.sendRedirect("adminHome.jsp");
                session.setAttribute("role", "admin");
            } 
            else if (user.getRole() == author) {
                response.sendRedirect("authorHome.jsp");
                session.setAttribute("role", "author");
            } 
            else if (user.getRole() == registerUser) {
                response.sendRedirect("registerUserHome.jsp");
                session.setAttribute("role", "registerUser");
            } 
            else {
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
        }
    }
}
