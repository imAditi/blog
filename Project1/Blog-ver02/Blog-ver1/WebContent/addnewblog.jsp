<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


        <head>
          <meta charset="UTF-8">
          <title>YASH Technologies</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> 
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
           <link rel="stylesheet" href="asset/css/style3.css"/>
          
          <link rel="stylesheet" href="asset/css/post-style.css">
          <script type="text/javascript" src="asset/vendors/jquery-3.3.1.min.js"></script>
          <script type="text/javascript" src="asset/vendors/bootstrap.min.js"></script>

          <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> 
          <script type="text/javascript" src="asset/js/script.js"></script>
          <script type="text/javascript">
            bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
          </script>
        </head>
        <body>
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
              <li><a href="ListBlogController">All Post</a></li>
						<li><a href="addnewblog.jsp">Add New Post</a></li>
						<li><a href="ListCategoryController">Add New Category</a></li>

              </ul>
            </li>
            <li class="a-side">
              <a href="userprofile.jsp" ><i class="fa fa-home" aria-hidden="true"></i>User Profile</a>
            </li>
          </ul>
        </div>
        <!-- /#sidebar-wrapper--> 
        <!-- /#Page Content--> 

        <!-- /Add Page Post starts -->
        <div class="container-fluid">
          <div class="row">
            <div class="content-header">
              <div class="pull-left">
               <a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a>
               <label >Add New Post</label>
             </div>
             <div class="pull-right">
               <font class="d-right"><a href=""><i class="fa fa-home" aria-hidden="true"></i></a>  / Blog Post / Add New Post</font>
             </div>
           </div>
         </div>

         <div class="container">
          <div class="jumbotron"> 
            <div class="row">
              <div class="col-xs-12">

                <form action="AddPostController" method="post"> 

                  <div class="form-group">
                    <label for="post-title">Post Title</label>
                    <input type="text" class="form-control" name="post-title" placeholder="Post Title" >
                  </div>

                  <div class="form-group">
                    <label for="Description">Description</label>
                    <textarea class="form-control" rows="8" name="Description"  ></textarea>
                  </div>

                  <div class="form-group">
                    <label for="select-category">Select Category</label>
                    <select multiple class="form-control" name="select-category" >
                      <option value="1">HTML</option>
                      <option value="2">CSS</option>
                      <option value="3">Java</option>
                      <option value="4">Spring</option>
                      <option value="5">JavaScript</option>
                      <option value="6">Bootstrap</option>
                    </select>
                  </div>

                  <button type="submit" class="btn btn-default">Submit</button> 
                 	
                </form>
                
             <!--    <form action="AddPostController">
                		 <button type="submit" class="btn btn-default">Submit</button>
                </form> -->
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- /Add Page Post ends -->
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


