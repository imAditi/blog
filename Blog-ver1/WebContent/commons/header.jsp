<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Blog App</title>
<link rel="icon" href="asset/group1/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="asset/group1/vendors/bootstrap.min.css">
<script type="text/javascript"
	src="asset/group1/vendors/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="asset/group1/vendors/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link rel="stylesheet" href="asset/group1/css/style.css" />
<link rel="stylesheet" href="asset/group2/css/style.css" />
<link rel="stylesheet" href="asset/group1/css/block.css" />

<script src="asset/group1/graph/Chart.bundle.js.download"></script>
<script src="asset/group1/graph/utils.js.download"></script>
<script src="asset/group1/js/script.js"></script>


</head>

<body>

	<!--Header : starts -->
	<header>

		<div class="container-fluid ">
			<div class="row lg-h1">
				<div class="col-md-12 " style="margin-top: -108px">
					<div class="col-md-6">
						<img src="asset/group1/images/yash-logo.svg"
							class="yashlogo pull-left" alt="YAsh Logo">
					</div>

					<div class="col-md-6" style="margin-top: 10px;">
						<c:choose>
							<c:when test="${role == 1 || role == 2}">

								<form action="LogoutController">
									<input class="btn btn-default pull-right" type="submit"
										value="Logout"
										style="width: 80px; font-size: 12px; color: #0097e6">
								</form>
							</c:when>

							<c:otherwise>
								<form action="registration.jsp">
									<input class="btn btn-default pull-right" type="submit"
										value="Sign Up"
										style="width: 80px; font-size: 12px; color: #0097e6; margin-left: 10px">
								</form>
								<form action="login.jsp">
									<input class="btn btn-default pull-right" type="submit"
										value="Login"
										style="width: 80px; font-size: 12px; color: #0097e6">
								</form>

							</c:otherwise>
						</c:choose>


					</div>
				</div>

				<div class="container-fluid" style="margin-top: -60px;">
					<div class="row">
						<div class="content-header navbar-fixed-top">
							<div class="pull-left">
								<a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a>
								<label>Dashboard</label>
							</div>
							<div class="pull-right d-right">
								<a href=""><i class="fa fa-home" aria-hidden="true"></i> /
									Dashboard</a>
							</div>
						</div>

					</div>

				</div>
			</div>

		</div>

	</header>
	<!-- Header :ends -->
	<!-- /#sidebar-wrapper :starts-->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@include file="partials/sideBar.jsp"%>