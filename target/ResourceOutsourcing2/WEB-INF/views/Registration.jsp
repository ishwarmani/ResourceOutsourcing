<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</html>