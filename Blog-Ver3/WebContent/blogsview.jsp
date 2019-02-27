

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="commons/head.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/dataTables.jqueryui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.jqueryui.min.css">


<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable({});
	});

	function confirmDelete() {
		//var result = confirm("Want to delete?");
		if (confirm('Are you sure you want to delete?'))
			;
		else
			return false;
	}

    function edit(button,id) {
    	changeInput(id);
        var x = document.getElementsByClassName(id);
        var an = document.getElementsByTagName("a");
        console.log(an);
        for (var i = 0; i < x.length; i++) {
           
            if (x[i].contentEditable == "false") {
                x[i].contentEditable = "true";

                button.innerHTML = '<img src = "images/save.svg" width="15px" height="15px">';
                for (var j = 0; j < an.length; j++) {
                	console.log(an[j].title);
                	
                    if(an[j].title==id){
                        
                    an[j].innerHTML = '<img src = "images/cancel.svg" width="15px" height="15px">';
                    }
                }

            } else {
                x[i].contentEditable = "false";

                button.innerHTML = '<img src = "images/edit.svg" width="15px" height="15px">';
                for (var j = 0; j < an.length; j++) {
                	 if(an[j].title==id){
                        
                    an[j].innerHTML = '<img src = "images/delete.svg" width="15px" height="15px">';
                    }
                }
            }
        }

    }
    function changeInput(id) {
        var x = document.getElementsByClassName(id);
        for (var i = 0; i < x.length; i++) {
            console.log(x[i].innerHTML+"-------------------"+id);
            
            var data = x[i].innerHTML;
     //       x[i].innerHTML = "<input type='text'>";
            
            var input = document.createElement('input');
            input.value = data;
            x[i].innerHTML="";
            x[i].appendChild(input);
   //         this.appendChild(docFrag);
        }

    }
</script>
<style type="text/css">
.body {
	background-color: #ecedf0;
}

.container {
	height: 75%;
	width: 75%;
}

.allPost {
	background-color: #f6f6f6;
	margin-top: 0px;
	margin-right: 0px;
	margin-left: 0px;
	height: 50px;
}

.allPost {
	margin-top: 10px;
}

table.dataTable.display tbody td {
	border-top: 1.5px solid #ddd;
}

input[type=search] {
	margin-top: 20px;
	-webkit-appearance: none;
	border-radius: 4px;
	height: 29px;
	width: 188px;
}

table.dataTable.no-footer {
	border-bottom: 1px solid #e4e4e4;
	border-top: 1px solid #e4e4e4;
	border-left: 1px solid #e4e4e4;
	border-right: 1px solid #e4e4e4;
}

table {
	border: 1px solid #e4e4e4;
	border-color: 1px solid #e4e4e4;
	border-radius: 5px;
	width: 776px;
	height: 195px;
}

select {
	margin-top: 20px;
	text-transform: none;
	border-radius: 4px;
	height: 31px;
	width: 69px;
}

.container {
	width: 805px;
	height: 368px;
	margin-top: 134px;
	margin-left: 308px;
}

.display {
	width: 776px;
	height: 195px;
}

.dataTables_wrapper .dataTables_paginate .paginate_button.current,
	.dataTables_wrapper .dataTables_paginate .paginate_button.current:hover
	{
	color: #333 !important;
	border: 1px solid #979797;
	background-color: white;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fff),
		color-stop(100%, #dcdcdc));
	background: -webkit-linear-gradient(top, #fff 0%, #dcdcdc 100%);
	background: -moz-linear-gradient(top, #fff 0%, #dcdcdc 100%);
	background: -ms-linear-gradient(top, #fff 0%, #dcdcdc 100%);
	background: -o-linear-gradient(top, #fff 0%, #dcdcdc 100%);
	background: linear-gradient(to bottom, #fff 0%, #0088cc 100%);
}
</style>


<link rel="stylesheet" href="css/style.css">
<title>Blog App</title>
</head>
<body>
	<div class="container">
		<div class="allPost">
			<h3>All Post</h3>


		</div>
	
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
					
						<td class = "${blogs.id}" contenteditable="false"><c:out value="${blogs.title}"></c:out></td>
						<td class = "${blogs.id}" contenteditable="false"><c:forEach var="category" items="${blogs.category}">
								<c:forEach var="categories" items="${categories}">
									<c:choose>
										<c:when test="${category==categories.id}">
											<c:out value="${categories.name}"></c:out>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach></td>
						<td class = "${blogs.id}" contenteditable="false"><c:out value="${blogs.created_at}"></c:out></td>
						 <td><button style="border: 0px;background-color:#f9f9f9" onclick="edit(this,${blogs.id});">
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
</body>
</html>