<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
		<div class="container">
		<h1> Users List :</h1>
		
		<table class="table">
			<tr>
				<td>id</td>
				<td>firstName</td>
				<td>lastName</td>
				<td>contact</td>
				<td>email</td>
				<td>password</td>
				<td>created_at</td>
				<td>updated_at</td>
			</tr>
			<c:forEach var="users" items="${users}">
			<tr>	
					<td><c:out value="${users.id}"></c:out></td>
					<td><c:out value="${users.firstName}"></c:out></td>
					<td><c:out value="${users.lastName}"></c:out></td>
					<td><c:out value="${users.contact}"></c:out></td>
					<td><c:out value="${users.email}"></c:out></td>
					<td><c:out value="${users.password}"></c:out></td>
					<td><c:out value="${users.created_at}"></c:out></td>
					<td><c:out value="${users.updated_at}"></c:out></td>
			</tr>
			</c:forEach>
		</table>
		</div>
</body>
</html>