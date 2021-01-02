<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+HK:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="Mystyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<title>View Contacts</title>
</head>
<body>

	<%@include file="navbar.jsp"%>

	<div class="container animate__animated animate__fadeInLeft mt-5">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Facebook</th>
					<th scope="col">Instagram</th>
					<th scope="col">Twitter</th>
					<th scope="col">About</th>
					<th scope="col">Country</th>
					<th scope="col">Province</th>
					<th scope="col">City</th>
					<th scope="col">Update</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contacts}" var="contact">
			 <tr>
						 <th scope="row"><c:out value="${contact.id }"></c:out></th>
						<td><c:out value="${contact.getName()}"></c:out></td>
						<td><c:out value="${contact.getEmail()}"></c:out></td>
						<td><c:out value="${contact.getFacebookid()}"></c:out></td>
						<td><c:out value="${contact.getInstaid()}"></c:out></td>
						<td><c:out value="${contact.getTwitterid()}"></c:out></td>
						<td><c:out value="${contact.getAbout()}"></c:out></td>
						<td><c:out value="${contact.getCounrty()}"></c:out></td>
						<td><c:out value="${contact.getProvince()}"></c:out></td>
						<td><c:out value="${contact.getCity()}"></c:out></td> 
						<td><a class="btn btn-danger" href="Delete?id=<c:out value="${contact.id }"></c:out>">Delete</a></button></td>
						<td><a class="btn btn-warning" href="Update?id=<c:out value="${contact.id }"></c:out>">Update</a></button></td>
						<td></td> 
					</tr> 
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>