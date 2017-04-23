<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%-- <%@taglib uri="/struts-tags" prefix="s"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.middle {
	width: 400px;
	margin: 0 auto;
}
</style>

</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle hamburger"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="glyphicon glyphicon-menu-hamburger white "></span>
			</button>
			<a class="navbar-brand" href="#"><img
				src="img/resourceOutsourcing.png" alt="Resource Outsourcing"></a>
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
	<div class="container">
		<form action="login" method="POST" class="middle">
			<center class="form-group" >
				<label class="radio-inline"><input type="radio" name="user">Admin</label>
				<label class="radio-inline"><input type="radio" name="user">Job
					Seeker</label> 
				<label class="radio-inline"><input type="radio"
					name="user">Job Provider</label>
			</center>
			<div class="form-group">
				<label for="email">Email:</label> <input type="text"
					class="form-control" name="username" required="required" />
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" name="password" required="required" />
			</div>
			<input type="submit" class="btn btn-success" value="login" />
			<!-- <submit value="login" cssStyle="width:100px"></submit> -->
			<a class="pull-right btn btn-danger" href="register">Not a Member
				!</a>
		</form>
	</div>
	<%-- <div>
		<form action="login" method="POST">
			<!-- <radio list="{'Admin','JobProvider','JobSeeker'}" name="type"
				required="required"></radio> -->
			<br />
			<input type = "text" label="Enter User Name" name="usename" required="required"/>
			<input type = "password" label="Enter Password" name="password" required="required"/>
			<input type="submit" value="login" />
			<!-- <submit value="login" cssStyle="width:100px"></submit> -->
			<a class="pull-right" href="register">Not a Member !</a>
		</form>
	</div> --%>
</body>
</html>