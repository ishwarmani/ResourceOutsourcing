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
<title>Academic And Professional</title>
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
	<form:form id="frm1" action="JobSeek_Professional" method="post"
		enctype="multipart/form-data">
		<table>
			<tr>
				<td>
					<fieldset>
						<legend>&nbsp;Professional Information&nbsp;</legend>
						<table>

							<tr>
								<form:select label="Job Function"
									list="{'Software Programming','Hardware & Networking','Other'}"
									path="Js_job"></form:select>
							</tr>
							<tr>
								<form:select label="Experience In Year"
									list="#{'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'more'}"
									path="Js_exp_year"></form:select>
							</tr>
							<tr>
								<form:select label="Experience In Month"
									list="#{'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'11','12':'12'}"
									name="Js_exp_month"></form:select>
							</tr>
							<tr>
								<form:select list="{'Delhi','Mumbai','Kolkatta'}" name="Js_loc"
									label="Current Work Location">
								</form:select>
							</tr>
							<%-- <tr>
								<form:file name="upload" label="Upload Resume Here"></form:file>
							</tr> --%>
							<tr>
								<td>Submit :</td>
								<td align="right"><button type="Submit" value="Submit"
										style="width: 35%"></button></td>
							</tr>
						</table>
					</fieldset>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>