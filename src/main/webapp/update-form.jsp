<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="com.Entities.Contact" %>
<%


Contact c=(Contact)request.getAttribute("contact");

%>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="Mystyle.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+HK:wght@700&display=swap" rel="stylesheet">
<title>Update Form</title>
</head>
<body class="my_fonts bg-form-page" >

	<!-- navbar -->
	<%@include file="navbar.jsp"%>
	<!-- navbar ended -->
	<div class="container  ">
		<div class="row mt-1 ">
			<div class="col-md-6 col-sm-12 col-12 offset-md-3 offset-sm-0">
				<div class="card animate__animated animate__fadeInLeft mb-3 ">
					<div class="card-header bg-color text-white text-center">
						<h1>Contact Form</h1>
					</div>
					<div class="card-body" >
					<div id="myloader" class="text-center" style="display: none; margin-top: 100px;">
					<span class="fa fa-refresh fa-lg fa-5x fa-spin" ></span>
					</div>
					<div id="form-holder">
					<form action="updateservlet" id="myform" method="post" >
							<div class="form-group">
								<div class="row">
									<div class="col-md-6 col-sm-6 col-6">
										<label for="exampleFormControlInput1">Enter name</label> <input
											type="text" class="form-control"
											id="exampleFormControlInput1" name="name" value="<%=c.getName() %>" required>
									</div>
									<div class="col-md-6 col-sm-6 col-6">
										<label for="exampleFormControlInput1">Enter Email</label> <input
											type="email" class="form-control"
											id="exampleFormControlInput1"name="email" value="<%=c.getEmail() %>" required>
									</div>
								</div>
							</div>
			  <div class="form-group">
								<div class="row">
									<div class="col-md-6 col-sm-6 col-6">
										<label for="exampleFormControlInput1">Enter Phone</label> <input
											type="text" class="form-control"
											id="exampleFormControlInput1" name="phone" value="<%=c.getPhone() %>" required>
									</div>
									<div class="col-md-6 col-sm-6  col-6">
										<label for="exampleFormControlInput1">Enter facebook
											ID</label> <input type="text" class="form-control"
											id="exampleFormControlInput1" name="facebookid" value="<%=c.getFacebookid() %>" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6 col-sm-6 col-6">
										<label for="exampleFormControlInput1">Enter insta ID</label> <input
											type="text" class="form-control"
											id="exampleFormControlInput1" name="instaid" value="<%=c.getInstaid() %>" required>
									</div>
									<div class="col-md-6 col-sm-6  col-6">
										<label for="exampleFormControlInput1">Enter Twitter ID</label>
										<input type="text" class="form-control"
											id="exampleFormControlInput1" name="twitter" value="<%=c.getTwitterid() %>" >
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-4">
										<label for="exampleFormControlInput1">Enter Country</label> 
										<input
											type="text" class="form-control"
											id="exampleFormControlInput1" name="country" value="<%=c.getCounrty() %>"  required>
									</div>
									<div class="col-md-4 col-sm-4 col-4">
										<label for="exampleFormControlInput1">Enter province</label> <input
											type="text" class="form-control"
											id="exampleFormControlInput1" name="province" value="<%=c.getProvince() %>" required>
									</div>
									<div class="col-md-4 col-sm-4 col-4">
										<label for="exampleFormControlInput1">Enter City</label> <input
											type="text" class="form-control"
											id="exampleFormControlInput1" name="city" value="<%=c.getCity() %>" required>
									</div>
								</div>
							</div>
							<div class="form-group">
							<label for="exampleFormControlInput1">About Yourself</label>
								<textarea class="form-control" name="about"  rows="3"
									 required><%=c.getAbout()%></textarea>
							</div> 
							
							<div class="form-group text-center">
								<button class="btn btn-danger text-white btn-lg">Save</button>
							</div> 
						</form>
					</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		
		<script>
	 	$('document').ready(function()
				{
			$("#myform").submit(function(event){
				$("#form-holder").hide();
		 		$("#myloader").show();	
				event.preventDefault();
			/*  var form = new FormData(this);   */ 
			  let form=$("#myform").serialize(); 
			console.log(form)
			 $.ajax({
					url:"updateservlet",
					type:'POST',
					data:form,
					   success: function (data1) {
						   $("#myloader").hide();	
						   swal({
							   title: "Good job!",
							   text: "You saved the contact!",
							   icon: "success",
							   button: "Aww yiss!",
							 });
                        $("#form-holder").show();
            	 		
                       },
                       error: function (data1) {
                    	   $("#myloader").hide();
                    	   swal({
                    		   title: "OOOOpppss!",
                    		   text: "Something went wrong!",
                    		   icon: "failure",
                    		   button: "Aww yiss!",
                    		 });
                    	   $("#form-holder").show();
               	 		
                       }
                    /* processData: false,
                    contentType: false */
				});
			});
				}); 
		
		</script>
		
</body>
</html>