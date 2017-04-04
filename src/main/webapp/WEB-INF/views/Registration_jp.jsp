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

	<form:form action="registerJP" method="POST" modelAttribute="jobSeeker">
		<table>
			<tr>
				<td>
					<fieldset style="width: auto;">
						<legend>&nbsp; Personal Information &nbsp;</legend>
						<br />
						<table>
							<tr>
								<td><form:input path="Jp_name" label="Name"
										requiredLabel="name" /></td>
							</tr>
							<tr>
								<td><form:input path="Jp_email" label="Email" /></td>
							</tr>
							<tr>
								<td><form:input path="Jp_phone" label="Phone"
										maxlength="10" /></td>
							</tr>
							<tr>
								<td><form:textarea path="Jp_address" label="Address"
										cols="24" rows="4"></form:textarea></td>
							</tr>
							<tr>
								<td><form:input path="Jp_pin" label="Pin" maxlength="6" /></td>
							</tr>
							<tr>
								<td><form:input path="Jp_city" label="City" /></td>
							</tr>
							<tr>
								<td><form:select path="Jp_country" label="Country">
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
								<td><form:input path="Jp_uname" label="User Name" /></td>
							</tr>
							<tr>
								<td><form:input path="Jp_pass" label="Password" /></td>
							</tr>
							<tr>
								<td><form:input path="Jp_repass" type="passworfd"
										label="Retype Password" /></td>
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
	</form:form>
</body>
</html>