<%@page import="com.yash.blogapp.serviceimpl.BlogServiceImpl"%>
<%@page import="com.yash.blogapp.service.BlogService"%>
<%!
	BlogService blogService =  new BlogServiceImpl();
%>

<%
	Integer id  = new Integer(request.getParameter("blogid"));
	blogService.destroy(id);
	response.sendRedirect("./ListBlogController?msg=Success! Record is delted");
%>