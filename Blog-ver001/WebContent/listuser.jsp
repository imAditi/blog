<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@include file="commons/head.jsp"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="container" style="margin-top: 5%;">
    <div class="row">
        <div class="col-md-4">
            <!-- <font style="font-size: 20px">List Blogs</font> -->
            <h3>List Users</h3>
        </div>
    </div>
    
    
    <br>
    <div class="row">
        <table class="table">
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Role</th>
                <th>Status</th>
                <th>Created_at</th>
                <th>Updated_at</th>
                <th>Action</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.contact}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                    <td>${user.status}</td>
                    <td>${user.created_at}</td>
                    <td>${user.updated_at}</td>
                    <td><a class="btn btn-primary"
                        href="viewblog.jsp?id=${user.id}">View Blogs</a> 
                        <a class="btn btn-warning"  href="deleteblog.jsp?id=${user.id}">Delete User</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<%@include file="commons/foot.jsp"%>