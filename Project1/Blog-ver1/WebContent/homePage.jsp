<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Blog App</title>
<link rel="icon" href="asset/group1/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="asset/group1/vendors/bootstrap.min.css">
<script type="text/javascript" src="asset/group1/vendors/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="asset/group1/vendors/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link rel="stylesheet" href="asset/group1/css/style.css" />
<link rel="stylesheet" href="asset/group1/css/block.css" />
<script src="asset/group1/graph/Chart.bundle.js.download"></script>
<script src="asset/group1/graph/utils.js.download"></script>
</head>

<body>
	<!--Header : starts -->
	<header>
		<div class="container-fluid">
			<div class="row lg-h1">
				<div class="col-md-12 ">
					<div class="col-sm-6">
						<img src="asset/group1/images/yash-logo.svg" class="yashlogo pull-left"
							alt="YAsh Logo">
					</div>
					<div class="col-sm-6 search-box">
						<input type="text" placeholder="Search..."> <i
							class="fa fa-search " aria-hidden="true"> </i>
					</div>
				</div>
			</div>
		</div>
		
	</header><!-- Header :ends -->
	<!-- /#sidebar-wrapper :starts-->
	<div id="wrapper">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav sidenav-border">
				<li><a href="#"> Navigation Heading </a></li>
				<li class="a-side"><a href="#"><i class="fa fa-home"
						aria-hidden="true"></i>Dashboard</a></li>
				<li class="dropdown a-side"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-columns"
						aria-hidden="true"></i>Blog Posts <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="ListBlogController">All Post</a></li>
						<li><a href="addnewblog.jsp">Add New Post</a></li>
						<li><a href="ListCategoryController">Add New Category</a></li>
					</ul></li>
				<li class="a-side"><a href="userprofile.jsp"><i class="fa fa-home"
						aria-hidden="true"></i>User Profile</a></li>
			</ul>
		</div>    <!-- /#sidebar-wrapper : ends -->

		<!-- Page Content : starts -->
		<div class="row">
			<div class="container-fluid">
				<div class="content-header" style="margin-top: 50px">
					<div class="pull-left">
						<a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a> <label>Dashboard</label>
					</div>
					<div class="pull-right d-right">
						<a href=""><i class="fa fa-home" aria-hidden="true"></i> /
							Dashboard</a>
					</div>
				</div>

			</div>

		</div>
		<div class="body-content">
			<!-- graph section :starts-->
			<div class="container" style="width: 100%">
				<div class="row ">
					<div class="row1">
						<div class="col-md-12 g-2 ">

							<h4>Post Type:</h4>

							<select name="postType" id="postType">
								<option id="allPost" value="allPost">All Post</option>
								<option id="publishPost" value="publishPost">Publish
									Post</option>
								<option id="trashedPost" value="trashedPost">Trashed
									Post</option>
								<option id="draftPost" value="draftPost">Draft Post</option>
							</select>


							<div class="g-1">
								<div style="width: 100%;">

									<canvas id="canvas" class="chartjs"
										style="display: block; width: 700px; height: 120px;"></canvas>
								</div>
							</div>
						</div> <!-- graph section : ends -->

						<!-- post counts : start-->
						<div class="col-md-6">
							<div class="jumbotron all_post  panel-custom">
								<div class="circle">
									<img src="asset/group1/images/life-preserver.svg">
								</div>
								<div class="post">
									<p>
										All Post Count <br> <strong> <%out.println(session.getAttribute("allBlogsCount"));
 %>
										</strong>
									</p>
								</div>
							</div>
						</div>
						<div class=" col-md-6">
							<div class="jumbotron published panel-custom">

								<div class="circle">
									<img src="asset/group1/images/dollar.svg">

								</div>
								<div class="post">
									<p>
										Published Post Count <br> <strong> <%out.println("$ " + 2 * (int) session.getAttribute("allBlogsCount"));
 %>
										</strong>
									</p>
								</div>
							</div>
						</div>
						<div class=" col-md-6 ">
							<div class="jumbotron trashed panel-custom">

								<div class="circle">
									<img src="asset/group1/images/shopping-cart.svg">

								</div>
								<div class="post">
									<p>
										Trashed Post Count <br> <strong> <%	out.println(session.getAttribute("deletedBlogsCount"));
 %>
										</strong>
									</p>
								</div>
							</div>
						</div>
						<div class=" col-md-6">
							<div class="jumbotron draft panel-custom">

								<div class="circle">
									<img src="asset/group1/images/man-user.svg">

								</div>
								<div class="post">
									<p>
										Draft Post Count <br> <strong>3 </strong>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>   <!--post count :end-->
			</div>
		</div>  <!-- Page Content : ends -->
	</div>

	<!--script section-->
	<script>
          $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
          });
        </script>
        
	<!--Graph script: start -->
	<script>
    var lineChartData = {
      labels: ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
      datasets: [{
        label:'Number of blogs',
        borderColor: window.chartColors.blue,
        //backgroundColor: window.chartColors.red,
        fill: '-1',
                
        data: [
                    
        		<%List<Integer> allBlogsAcrToMonth = (List) session.getAttribute("allBlogsAcrToMonth");%>
        		'<%=allBlogsAcrToMonth.get(0)%>',
        		'<%=allBlogsAcrToMonth.get(1)%>',
        		'<%=allBlogsAcrToMonth.get(2)%>',
        		'<%=allBlogsAcrToMonth.get(3)%>',
        		'<%=allBlogsAcrToMonth.get(4)%>',
        		'<%=allBlogsAcrToMonth.get(5)%>',
        		'<%=allBlogsAcrToMonth.get(6)%>',
        		'<%=allBlogsAcrToMonth.get(7)%>',
        		'<%=allBlogsAcrToMonth.get(8)%>',
        		'<%=allBlogsAcrToMonth.get(9)%>',
        		'<%=allBlogsAcrToMonth.get(10)%>',
        		'<%=allBlogsAcrToMonth.get(11)%>'
        ]
        
      }]
    };

    window.onload = function() {
      var ctx = document.getElementById('canvas').getContext('2d');
      window.myLine = Chart.Line(ctx, {
        data: lineChartData,
        options: {
          
          elements: {
                        line: {
                            tension: 0.000001
                        }
                    },
                    scales: {

                            yAxes: [{

                                    display: true,

                                    ticks: {
                                        min:0,
                                     // steps: 5,
                                stepValue: 2,
                                max: 20
                                    }
                                }],


                       // xAxes:[{display: false}]
                        }
        }
      });
    };
  
    $(function () {
	$("#postType").on("change", function () {
    switch ($(this).val()) {
        case "allPost":        
		            lineChartData.datasets.forEach(function(dataset) {
		            	 var  count=0;
					dataset.data = dataset.data.map(function() {
						return allPostFunction(count++);
					});
				});    
		            window.myLine.update();
            break;
            
        case "publishPost":
				lineChartData.datasets.forEach(function(dataset) {
		            
					dataset.data = dataset.data.map(function() {
						
						return 0;
					});
				});
		
				window.myLine.update();
		   break;
		   
        case "trashedPost":
        	lineChartData.datasets.forEach(function(dataset) {
	           var  count=0;
				dataset.data = dataset.data.map(function() {
					
					return trashedPostFunction(count++);
				});
			});
	
			window.myLine.update();
            break;
            
        case "draftPost":
	        	lineChartData.datasets.forEach(function(dataset) {
		            
					dataset.data = dataset.data.map(function() {
						
						return 0;
					});
				});
		
				window.myLine.update();
            break;
    }
});
});
    function allPostFunction( count) {
        var ar1=[
            
    		<%List<Integer> list1 = (List) session.getAttribute("allBlogsAcrToMonth");%>
    		'<%=list1.get(0)%>',
    		'<%=list1.get(1)%>',
    		'<%=list1.get(2)%>',
    		'<%=list1.get(3)%>',
    		'<%=list1.get(4)%>',
    		'<%=list1.get(5)%>',
    		'<%=list1.get(6)%>',
    		'<%=list1.get(7)%>',
    		'<%=list1.get(8)%>',
    		'<%=list1.get(9)%>',
    		'<%=list1.get(10)%>',
    		'<%=list1.get(11)%>'
    		
    ];         
        return ar1[count];
        }
    
    function trashedPostFunction( count) {
        var ar=[
            
    		<%List<Integer> list = (List) session.getAttribute("deletedBlogsAcrToMonth");%>
    		'<%=list.get(0)%>',
    		'<%=list.get(1)%>',
    		'<%=list.get(2)%>',
    		'<%=list.get(3)%>',
    		'<%=list.get(4)%>',
    		'<%=list.get(5)%>',
    		'<%=list.get(6)%>',
    		'<%=list.get(7)%>',
    		'<%=list.get(8)%>',
    		'<%=list.get(9)%>',
    		'<%=list.get(10)%>',
    		'<%=list.get(11)%>'
    		
    ];         
        return ar[count];
        }
  </script>
	<!--Graph script : ends-->

</body>
</html>