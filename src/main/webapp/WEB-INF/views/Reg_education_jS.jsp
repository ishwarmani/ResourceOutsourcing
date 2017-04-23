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
  <script type="text/javascript">
  	function ten() {
  		var x = parseInt(document.getElementById("frm1").elements["Js10_marks"].value);
  		//alert(x)
  		var y = parseInt(document.getElementById("frm1").elements["Js10_total"].value);
  		alert(y)
  		if (x < y && x != null && y != null) {
  			var z = (x * 100 / y);
  			alert()
  			document.getElementById("frm1").elements["Js10_avg"].value = z
  					.toFixed(2);
  		} else {
  			alert('Please put correct value');
  		}

  	}
  	function t12() {
  		var x = parseInt(document.getElementById("frm1").elements["Js12_marks"].value);
  		var y = parseInt(document.getElementById("frm1").elements["Js12_total"].value);
  		if (x < y && x != null && y != null) {
  			var z = (x * 100 / y);
  			document.getElementById("frm1").elements["Js12_avg"].value = z
  					.toFixed(2);
  		} else {
  			alert('Please put correct value');
  		}

  	}
  	function t13() {
  		var x = parseInt(document.getElementById("frm1").elements["Js13_marks"].value);
  		var y = parseInt(document.getElementById("frm1").elements["Js13_total"].value);
  		if (x < y && x != null && y != null) {
  			var z = (x * 100 / y);
  			document.getElementById("frm1").elements["Js13_avg"].value = z
  					.toFixed(2);
  		} else {
  			alert('Please put correct value');
  		}

  	}
  	function t14() {
  		var x = parseInt(document.getElementById("frm1").elements["Js14_marks"].value);
  		var y = parseInt(document.getElementById("frm1").elements["Js14_total"].value);
  		if (x < y && x != null && y != null) {
  			var z = (x * 100 / y);
  			document.getElementById("frm1").elements["Js14_avg"].value = z
  					.toFixed(2);
  		} else {
  			alert('Please put correct value');
  		}

  	}
  	function t15() {
  		var x = parseInt(document.getElementById("frm1").elements["Js15_marks"].value);
  		var y = parseInt(document.getElementById("frm1").elements["Js15_total"].value);
  		if (x < y && x != null && y != null) {
  			var z = (x * 100 / y);
  			document.getElementById("frm1").elements["Js15_avg"].value = z
  					.toFixed(2);
  		} else {
  			alert('Please put correct value');
  		}

  	}
  </script>
  <style>
  .middle{

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
<form id="frm1" action="jobSeek_Education" method="POST" class="middle">
    <div class="col-xs-4">
    <legend>&nbsp; Marks of 10th and 12th &nbsp;</legend>
  <div class="form-group">
      <label >Marks of 10th :</label>
      <select class="form-control" list="{'Marks'}" path="Js_10"></select>
  </div>
  <div class="form-group">
      <label >Optional Marks :</label>
      <input type = "text" class="form-control" name="Js10_marks" required="required" />
  </div>
  <div class="form-group">
      <label >10th Marks Total:</label>
      <input type = "text" class="form-control" name="Js10_total" onblur="ten()" required="required" />
  </div>
  <div class="form-group">
      <label >Percentage :</label>
      <input type = "text" class="form-control" name="Js10_avg" maxlength="6" disabled/>
  </div>
  <div class="form-group">
      <label >Board Or University:</label>
    <input type = "text" class="form-control" name="Js10_uni" required="required" />
  </div>
  <div class="form-group">
      <label >Marks of 12th :</label>
      <select class="form-control" label="Marks Type" list="{'Marks'}" name="Js_12"></select>
  </div>
  <div class="form-group">
      <label >Optional Marks :</label>
      <input type = "text" class="form-control" name="Js12_marks" required="required" />
  </div>
  <div class="form-group">
      <label >12th Marks Total:</label>
      <input type = "text" class="form-control" name="Js12_total" onblur="t12()" required="required" />
  </div>
  <div class="form-group">
      <label >Percentage :</label>
      <input type = "text" class="form-control" name="Js12_avg" maxlength="6" disabled />
  </div>
  <div class="form-group">
      <label >Board Or University:</label>
    <input type = "text" class="form-control" name="Js12_uni" required="required" />
  </div>
</div>
<div class="col-xs-4">
  <legend>&nbsp; Marks of Graduation: &nbsp;</legend>

  <div class="form-group">
      <label >Marks Type:</label>
      <select class="form-control" list="{'Marks'}" name="Js_13"></select>
  </div>
  <div class="form-group">
      <label >Optional Marks :</label>
      <input type = "text" class="form-control" name="Js13_marks" required="required" />
  </div>
  <div class="form-group">
      <label >Total Marks :</label>
      <input type = "text" class="form-control" name="Js13_total" onblur="t13()" required="required" />
  </div>
  <div class="form-group">
      <label >Percentage :</label>
      <input type = "text" class="form-control" name="Js13_avg" maxlength="6" disabled/>
  </div>
  <div class="form-group">
      <label >Board Or University:</label>
    <input type = "text" class="form-control" name="Js13_uni" required="required" />
  </div>
  <legend>&nbsp; Marks of Post Graduation : &nbsp;</legend>

  <div class="form-group">
      <label >Marks Type:</label>
      <select class="form-control" list="{'Marks'}" name="Js_14"></select>
  </div>
  <div class="form-group">
      <label >Optional Marks :</label>
      <input type = "text" class="form-control" name="Js14_marks" required="required" />
  </div>
  <div class="form-group">
      <label >Total Marks :</label>
      <input type = "text" class="form-control" name="Js14_total" onblur="t14()" required="required" />
  </div>
  <div class="form-group">
      <label >Percentage :</label>
      <input type = "text" class="form-control" name="Js14_avg" maxlength="6" disabled/>
  </div>
  <div class="form-group">
      <label >Board Or University:</label>
    <input type = "text" class="form-control" name="Js14_uni" required="required" />
  </div>


  <!-- <submit value="login" cssStyle="width:100px"></submit> -->

</div>
<div class="col-xs-4">
  <legend>&nbsp; Marks of other Diploma: &nbsp;</legend>
  <div class="form-group">
      <label >Marks Type:</label>
      <select class="form-control" list="{'Marks'}" name="Js_15"></select>
  </div>
  <div class="form-group">
      <label >Optional Marks :</label>
      <input type = "text" class="form-control" name="Js15_marks" required="required" />
  </div>
  <div class="form-group">
      <label >Total Marks :</label>
      <input type = "text" class="form-control" name="Js15_total" onblur="t15()" required="required" />
  </div>
  <div class="form-group">
      <label >Percentage :</label>
      <input type = "text" class="form-control" name="Js15_avg" maxlength="6" disabled/>
  </div>
  <div class="form-group">
      <label >Board Or University:</label>
    <input type = "text" class="form-control" name="Js15_uni" required="required" />
  </div>
  <input type="submit" class="btn btn-success" value="submit" />
    <a class="pull-right btn btn-danger"href="register">Not a Member !</a>
</div>
</form>

<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Academic And Professional</title>
<script type="text/javascript">
	function ten() {
		var x = parseInt(document.getElementById("frm1").elements["Js10_marks"].value);
		var y = parseInt(document.getElementById("frm1").elements["Js10_total"].value);
		if (x < y && x != null && y != null) {
			var z = (x * 100 / y);
			document.getElementById("frm1").elements["Js10_avg"].value = z
					.toFixed(2);
		} else {
			alert('Please put correct value');
		}

	}
	function t12() {
		var x = parseInt(document.getElementById("frm1").elements["Js12_marks"].value);
		var y = parseInt(document.getElementById("frm1").elements["Js12_total"].value);
		if (x < y && x != null && y != null) {
			var z = (x * 100 / y);
			document.getElementById("frm1").elements["Js12_avg"].value = z
					.toFixed(2);
		} else {
			alert('Please put correct value');
		}

	}
	function t13() {
		var x = parseInt(document.getElementById("frm1").elements["Js13_marks"].value);
		var y = parseInt(document.getElementById("frm1").elements["Js13_total"].value);
		if (x < y && x != null && y != null) {
			var z = (x * 100 / y);
			document.getElementById("frm1").elements["Js13_avg"].value = z
					.toFixed(2);
		} else {
			alert('Please put correct value');
		}

	}
	function t14() {
		var x = parseInt(document.getElementById("frm1").elements["Js14_marks"].value);
		var y = parseInt(document.getElementById("frm1").elements["Js14_total"].value);
		if (x < y && x != null && y != null) {
			var z = (x * 100 / y);
			document.getElementById("frm1").elements["Js14_avg"].value = z
					.toFixed(2);
		} else {
			alert('Please put correct value');
		}

	}
	function t15() {
		var x = parseInt(document.getElementById("frm1").elements["Js15_marks"].value);
		var y = parseInt(document.getElementById("frm1").elements["Js15_total"].value);
		if (x < y && x != null && y != null) {
			var z = (x * 100 / y);
			document.getElementById("frm1").elements["Js15_avg"].value = z
					.toFixed(2);
		} else {
			alert('Please put correct value');
		}

	}
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
	<form id="frm1" action="jobSeek_Education" method="Post">
		<table>
			<tr>
				<td>
					<fieldset>
						<legend>&nbsp;Academic Information&nbsp;</legend>
						<table>
							<tr>
								<td>Marks of 10th :</td>
							</tr>
							<tr>
								<select list="{'Marks'}" path="Js_10"></select>
							</tr>
							<tr>
								<td>Optain Marks :</td>
								<input name="Js10_marks" required="required" />
							</tr>
							<tr>
								<td>10th Marks Total:</td>
								<input path="Js10_total" onblur="ten()" required="required" />
							</tr>
							<tr>
								<td>Percentage :</td>
								<input path="Js10_avg" maxlength="6" />
							</tr>
							<tr>
								<td>Board Or University :</td>
								<input path="Js10_uni" required="required" />
							</tr>
							<tr>
								<td>Marks of 12th :</td>
							</tr>
							<tr>
								<select label="Marks Type" list="{'Marks'}" name="Js_12"></select>
							</tr>
							<tr>
								<td>Optional Marks :</td>
								<input path="Js12_marks" required="required" />
							</tr>
							<tr>
								<td>Total Marks :</td>
								<input path="Js12_total" onblur="t12()" required="required" />
							</tr>
							<tr>
								<td>Percentage :</td>
								<input path="Js12_avg" maxlength="6" />
							</tr>
							<tr>
								<td>Board Or University :</td>
								<input path="Js12_uni" required="required" />
							</tr>
							<tr>
								<td>Marks of Graduation :</td>
							</tr>
							<tr>
								<td>Marks Type :</td>
								<select list="{'Marks'}" name="Js_13"></select>
							</tr>
							<tr>
								<td>Optain Marks :</td>
								<input path="Js13_marks" required="required" />
							</tr>
							<tr>
								<td>Total Marks :</td>
								<input path="Js13_total" onblur="t13()" required="required" />
							</tr>
							<tr>
								<td>Percentage :</td>
								<input path="Js13_avg" maxlength="6" />
							</tr>
							<tr>
								<td>Board Or University :</td>
								<input path="Js13_uni" required="required" />
							</tr>
							<tr>
								<td>Marks of Post Graduation :</td>
							</tr>
							<tr>
								<td>Marks Type :</td>
								<select list="{'Marks'}" name="Js_14"></select>
							</tr>
							<tr>
								<td>Optain Marks :</td>
								<input path="Js14_marks" />
							</tr>
							<tr>
								<td>Total Marks :</td>
								<input path="Js14_total" onblur="t14()" />
							</tr>
							<tr>
								<td>Percentage :</td>
								<input path="Js14_avg" maxlength="6" />
							</tr>
							<tr>
								<td>Board Or University :</td>
								<input path="Js14_uni" />
							</tr>
							<tr>
								<td>Other Diploma :</td>
							</tr>
							<tr>
								<td>Marks Type :</td>
								<select list="{'Marks'}" name="Js_15"></select>
							</tr>
							<tr>
								<td>Optain Marks :</td>
								<input path="Js15_marks" />
							</tr>
							<tr>
								<td>Total Marks :</td>
								<input path="Js15_total" onblur="t15()" />
							</tr>
							<tr>
								<td>Percentage :</td>
								<input path="Js15_avg" maxlength="6" />
							</tr>
							<tr>
								<td>Board Or University :</td>
								<input path="Js15_uni" />
							</tr>
							<submit value="Submit" style="width:35%"></submit>
						</table>
					</fieldset>
				</td>
			</tr>
		</table>
	</form>
</body>
</html> --%>