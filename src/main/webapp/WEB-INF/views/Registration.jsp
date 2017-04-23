<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .middle{
    width: 400px;
    margin: 0 auto;
  }
  </style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
				<div class="navbar-header">
						<button type="button" class="navbar-toggle hamburger" data-toggle="collapse" data-target="#myNavbar">
								<span class="glyphicon glyphicon-menu-hamburger white "></span>
						</button>
						<a class="navbar-brand" href="#"><img src="img/resourceOutsourcing.png" alt = "Resource Outsourcing"></a>
				</div>
				<div class="collapse navbar-collapse  navbar-right" id="myNavbar">
						<ul class="nav navbar-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">About</a></li>
								<li><a href="#">Features</a></li>
								<li><a href="#">Reviews</a></li>
								<li><a href="#">Support</a></li>
						</ul>
				</div>
		</div>
</nav>
<div class="container middle">
				<a href="registration_jp" class="btn btn-success">Job Provider</a>
				<a href="registration_jS" class="pull-right btn btn-success">Job Seeker</a><br><br>
			  <a class="pull-right btn btn-danger" href="login">Already a Member !</a>
	</div>
</body>
</html>

<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
fieldset {
	width: 40%;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-border-radius: 5px; //
	edit: D
}

legend {
	width: auto;
	text-align: center;
	font-size: 16px;
	font-style: oblique;
}
</style>
</head>
<body>
	<center>
		<br />
		<br />
		<fieldset>
			<legend>Select Your Choice</legend>
			<h4>
				<a href="registration_jp">Job Provider</a> <br />
				<br> <a href="registration_jS">Job Seeker</a> <br>
				<br>
			</h4>
			<a class="pull-right" href="login">Already a Member !</a>
		</fieldset>
		<br>
		<br>
	</center>
</body>
</html> --%>