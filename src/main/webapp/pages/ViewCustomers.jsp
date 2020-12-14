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
			<h1>View Customer Details</h1>
			<h2> Details as submitted as follows: </h2>
		</div>
	</div>


	<div style="width:500px; margin : 0 auto;">
		<form action="getdetails" method="post">
		  <div class="form-group">
		    <label>Enter Customer ID :</label>
		    <input type="number" class="form-control" name="cid" placeholder="Enter customer id">
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
</body>
</html>