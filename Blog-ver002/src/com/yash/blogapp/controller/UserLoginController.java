package com.yash.blogapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yash.blogapp.domain.User;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.service.UserService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;
import com.yash.blogapp.serviceimpl.UserServiceImpl;

@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserServiceImpl();
	BlogService  blogService = new BlogServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page="registeruser.jsp";
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		System.out.println(email);
		String password = request.getParameter("password");
		System.out.println(password);
		User user = userService.authenticateUser(email, password);

		System.out.println(user);
		if (user != null) {
			
			session.setAttribute("user", user);
			session.setAttribute("role", user.getRole());
			session.setAttribute("id", user.getId());

			System.out.println(user.getRole());
			if (user.getRole() == userService.AUTHOR) {
				page="createblog.jsp";
			}
			if (user.getRole() == userService.ADMIN) {
				session.setAttribute("allBlogsCount",blogService.createdBlogAcrMonthsCount() );
				session.setAttribute("allBlogsAcrToMonth",blogService.createdBlogAcrMonths());
				session.setAttribute("deletedBlogsCount",blogService.deletedBlogAcrMonthsCount() );
				session.setAttribute("deletedBlogsAcrToMonth",blogService.deletedBlogAcrMonths());
				page="homePage.jsp";
			}
			if (user.getRole() == userService.REGISTERED) {
				System.out.println(user.getRole());
				page="./ListBlogController";
			}
		}

		
		request.getRequestDispatcher(page).forward(request, response);
		

	}
}
