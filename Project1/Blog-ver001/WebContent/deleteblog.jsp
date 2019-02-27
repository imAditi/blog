<%@include file="commons/head.jsp"%>

<%@page import="com.yash.blogapp.serviceimpl.BlogServiceImpl"%>
<%@page import="com.yash.blogapp.service.BlogService"%>
<%!
	BlogService blogService =  new BlogServiceImpl();
%>

<%
	Integer id  = new Integer(request.getParameter("id"));
	blogService.destroy(id);
	response.sendRedirect("ListBlogController");
%>

<%@include file="commons/foot.jsp"%>