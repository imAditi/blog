

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type = "text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"> 

<!--   <script type="text/javascript" href="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script> -->
  
  <link rel="stylesheet" type="text/css" href="asset/vendors/bootstrap.min.css">
  
  <script type="text/javascript" src="asset/vendors/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="asset/vendors/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> 
  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

  <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.jqueryui.min.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/style1.css"/>
  <link rel="stylesheet" type="text/css" href="asset/css/style.css"/>

  <script type="text/javascript" src="asset/js/script1.js"></script>
  <script type="text/javascript" src="asset/js/custom-script.js"></script>



<title>Blog App | All Posts</title>
</head>
<body>
<!--header starts   -->        
 <!--header starts   -->        

   <div class="header">
    <header class="main-header">
      <div class="row">
        <div class="container-fluid">
          <div class="col-md-12">
            <div class="col-sm-6">
              <img src="asset/images/yash-logo.svg" class="yashlogo pull-left" alt="YAsh Logo">
            </div>
            <div class="col-sm-6">
              <input type="text" class="search-box pull-right" placeholder="Search">

            </div>
          </div>
        </div>
      </div>
    </header>
  </div>

  <!--header ends -->

  <!-- side navigation starts-->

  <div id="wrapper">
   <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a href="#">
          Navigation Heading
        </a>
      </li>
      <li class="a-side">
        <a href="#" ><i class="fa fa-home" aria-hidden="true"></i>Dashboard</a>
      </li>
      <li class="dropdown a-side">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-columns" aria-hidden="true"></i>Blog Posts <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">All Post</a></li>
          <li><a href="#">Add New Post</a></li>
          <li><a href="#">Add New Category</a></li>

        </ul>
      </li>
      <li class="a-side">
        <a href="#" ><i class="fa fa-home" aria-hidden="true"></i>User Profile</a>
      </li>
    </ul>
  </div>
  <!-- /#sidebar-wrapper--> 
  <!-- /#Page Content--> 


  <div class="container-fluid">
    <div class="row">
      <div class="content-header">
        <div class="pull-left">
         <a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a>
         <label >All Posts</label>
       </div>
       <div class="pull-right">
         <font class="d-right"><a href=""><i class="fa fa-home" aria-hidden="true"></i></a>  / Dashboard</font>
       </div>
     </div>
   </div>
 </div>

	<div class="container">
		 <div class="row">
   <div class="team col-md-10">

    <div class="dataTableDiv">

      <div class="allPost">
        <h3>All Post</h3>
        <div id="windowButtons">
         <img src="asset/images/drop-down-arrow.svg" height="10px" width="10px" id="show">
         <img src ="asset/images/cancel.svg" height="10px" width="10px" hspace=8 id="hide">
       </div>
     </div>

     <div class="issue">
		<table id="example" class="display" style="width: 100%">
			<thead>
				<tr>

					<th>Post Title</th>
					<th>Category</th>
					<th>Date</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="blogs" items="${blogs}">
					<tr>
					
						<td class = "${blogs.id}" ><c:out value="${blogs.title}"></c:out></td>
						<td class = "${blogs.id}" ><c:forEach var="category" items="${blogs.category}">
								<c:forEach var="categories" items="${categories}">
									<c:choose>
										<c:when test="${category==categories.id}">
											<c:out value="${categories.name}"></c:out>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach></td>
						<td class = "${blogs.id}" ><c:out value="${blogs.created_at}"></c:out></td>
						 <td><button style="border: 0px;background-color:#f9f9f9" onclick="update(this,${blogs.id});">
                            <img id=y src="images/edit.svg" title="edit" width="15px" height="15px">
                        </button>

                        <a id="del" href="DeleteBlogController?id=${blogs.id}" title="${blogs.id}" onclick="return confirm('Are you sure?')">
                            <img src="images/delete.svg" width="15px" height="15px">
                        </a>
                    </td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
</div>

</div>

<!-- row end -->
</div>

</div>

</div>


<!-- /#page-content-wrapper -->        

<!-- /#wrapper Menu Toggle Script -->

<script>
  $("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });
</script>
</body>
</html>
