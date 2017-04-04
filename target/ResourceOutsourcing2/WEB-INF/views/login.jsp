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
<title>Insert title here</title>
</head>
<body>
	<br />
	<!-- <s:actionerror /> -->
	<div>
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
	</div>
</body>
</html>