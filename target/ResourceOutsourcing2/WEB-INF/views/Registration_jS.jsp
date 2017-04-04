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
<title>Registration Form</title>
<script type="text/javascript">
	
</script>
<style type="text/css">
fieldset {
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
	<%-- <%@taglib uri="/struts-tags" prefix="s"%> --%>

	<form:form action="register" method="POST" modelAttribute="jobSeeker">
		<%-- onsubmit="return confirm('Are Your Sure about Submit?');" >--%>
		<!-- <actionerror /> -->
		<center>
			<table style="width: 50%">
				<tr>
					<td>
						<fieldset style="width: auto;">
							<legend>&nbsp; Personal Information &nbsp;</legend>
							<br />
							<table>
								<tr>
									<td><form:input path="Js_name" label="name" placeholder="Name"
											/></td>
								</tr>
								<tr>
									<td><form:input path="Js_email" placeholder="Email" /></td>
								</tr>
								<tr>
									<td><form:input path="Js_phone" placeholder="Phone"
											maxlength="10" /></td>
								</tr>
								<tr>
									<td><form:textarea path="Js_address" placeholder="Address"
											cols="24" rows="4" /></td>
								</tr>
								<tr>
									<td><form:input path="Js_pin" placeholder="Pin" maxlength="6" /></td>
								</tr>
								<tr>
									<td><form:input path="Js_city" placeholder="City" name="Js_city" /></td>
								</tr>
								<tr>
									<td><form:select path="Js_country" placeholder="Country">
											<option>Country</option>
											<option value="India">India</option>
											<option value="United Kingdom">United Kingdom</option>
											<option value="United States">United States</option>
										</form:select></td>
								</tr>
							</table>
						</fieldset>

						<fieldset>
							<legend>&nbsp;Login Information&nbsp;</legend>
							<table>
								<tr>
									<td><form:input path="Js_uname" placeholder="User Name" /></td>
								</tr>
								<tr>
									<td><form:input path="Js_pass" placeholder="Password" /></td>
								</tr>
								<tr>
									<td><form:input path="Js_repass" placeholder="Retype Password" /></td>
								</tr>
								<tr>
									<td align="right"><button type="Submit" value="Register Me"
											style="width: 100px"></button></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</center>
	</form:form>
</body>
</html>