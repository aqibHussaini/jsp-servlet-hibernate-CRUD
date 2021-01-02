<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" shrink-to-fit="no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<link rel="stylesheet" href="Mystyle.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+HK:wght@700&display=swap" rel="stylesheet">
<title>My Home Page</title>
</head>
<body class="my_fonts">
	<!-- navbar start -->
	<%@include file="navbar.jsp"%>
	<!-- navbar end -->
	<!-- header start -->
	<section class="header">
	<div class="container  h-100">
		<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-md-12 col-12  col-lg-12 col-sm-12 text-center">
				<h1 class="text-white font-weight-bold animate__animated animate__backInDown">The Contact Application</h1>
				<p class="text-white animate__animated animate__backInRight">Personal contact information furnished to
					a public body for the purpose of receiving electronic mail from the
					public body, provided that the electronic mail recipient has
					requested that the public body not disclose such
					information.</p>
					<div class=" text-center">
					<a href="Form.jsp" class="btn btn-warning btn-lg text-white p-2 m-2 animate__animated animate__bounce">Add
					Contact</a><a href="#"
					class="btn btn-success p-2 m-2 btn-lg text-white animate__animated animate__bounce">View Contact</a>
					</div>
			</div> 
		</div>
	</div>
	</section>
	<!-- header end -->
	
	<!--  JavaScript files -->
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>