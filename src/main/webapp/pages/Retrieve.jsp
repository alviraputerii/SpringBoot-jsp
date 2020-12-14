<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customers</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Bootsample</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="addcustomer">Save Customer</a></li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> View Customer </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown" style="padding-left:20px;color:black">
				          <a class="dropdown-item" href="getdetail">View By Id</a>
				          <br>
				          <a class="dropdown-item" href="getalldetails">View All Data</a>
				        </div>
					</li>
					<li><a href="deletecustomer">Delete Customer</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container" id="homeDiv">
		<div class="jumbotron text-center">
			<h1>Retrieve Customer Details</h1>
			<h2> Details as submitted as follows: </h2>
		</div>
	</div>
	
	<div style="margin:0 auto; width:500px;">
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Name</th>
		      <th scope="col">Email</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">${cid}</th>
		      <td>${cname}</td>
		      <td>${cemail}</td>
		    </tr>
		  </tbody>
		</table>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
</body>
</html>