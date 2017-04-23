<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
    .middle{
      width: 700px;
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
  <form action="registration_jS" method="POST" class="middle">
    <!-- <radio list="{'Admin','JobProvider','JobSeeker'}" name="type"
      required="required"></radio> -->
      <div class="col-xs-6">
      <legend>&nbsp; Personal Information &nbsp;</legend>
    <div class="form-group">
        <label for="email">Name:</label>
        <input type = "text" class="form-control" path="Js_name" placeholder="Name" name="Js_name"/>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type = "text" class="form-control" path="Js_email" placeholder="Email" name="Js_email"/>
    </div>
    <div class="form-group">
        <label for="email">Phone Number:</label>
        <input type = "text" class="form-control" path="Js_phone" placeholder="Phone" name="Js_phone" maxlength="10"/>
    </div>
    <div class="form-group">
        <label for="email">Address:</label>
        <textarea type = "text" class="form-control" path="Js_address" placeholder="Address" name="Js_address" cols="24" rows="4"></textarea>
    </div>
    <div class="form-group">
        <label for="email">Pin:</label>
      <input type = "text" class="form-control" path="Js_pin" placeholder="Pin" name="Js_pin" maxlength="6"/>
    </div>
    <div class="form-group">
        <label for="email">City:</label>
        <input type = "text" class="form-control" path="Js_city" placeholder="City" name="Js_city"/>
    </div>
    <div class="form-group">
        <label for="email">Country:</label>
        <select class="form-control" path="Js_country" placeholder="Country" name="Js_country">
            <option value="India">India</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United States">United States</option>
        </select>
    </div>
  </div>
  <div class="col-xs-6">
    <legend>&nbsp;Login Information&nbsp;</legend>
    <div class="form-group">
        <label for="email">Username:</label>
        <input type = "text" class="form-control" name="Js_uname" required="required"/>
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <input type = "password" class="form-control"  name="Js_pass" required="required"/>
    </div>
    <div class="form-group">
        <label for="password">Re-enter Password:</label>
        <input type = "password" class="form-control"  name="Js_repass" required="required"/>
    </div>
        <input type="submit" class="btn btn-success" value="login" />
    <!-- <submit value="login" cssStyle="width:100px"></submit> -->
    <a class="pull-right btn btn-danger"href="register">Not a Member !</a>
  </div>
  </form>
</body>
</html>

<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            -webkit-border-radius: 5px;
        / / edit: D
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
<%@taglib uri="/struts-tags" prefix="s"%>

<form action="registration_jS" method="POST">
    onsubmit="return confirm('Are Your Sure about Submit?');" >
    <!-- <actionerror /> -->
    <center>
        <table style="width: 50%">
            <tr>
                <td>
                    <fieldset style="width: auto;">
                        <legend>&nbsp; Personal Information &nbsp;</legend>
                        <br/>
                        <table>
                            <tr>
                                <td><input path="Js_name" placeholder="Name" name="Js_name"/></td>
                            </tr>
                            <tr>
                                <td><input path="Js_email" placeholder="Email" name="Js_email"/></td>
                            </tr>
                            <tr>
                                <td><input path="Js_phone" placeholder="Phone" name="Js_phone"
                                                maxlength="10"/></td>
                            </tr>
                            <tr>
                                <td><textarea path="Js_address" placeholder="Address" name="Js_address"
                                              cols="24" rows="4"></textarea></td>
                            </tr>
                            <tr>
                                <td><input path="Js_pin" placeholder="Pin" name="Js_pin" maxlength="6"/></td>
                            </tr>
                            <tr>
                                <td><input path="Js_city" placeholder="City" name="Js_city"/></td>
                            </tr>
                            <tr>
                                <td><select path="Js_country" placeholder="Country" name="Js_country">
                                    <option value="India">India</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                </select></td>
                            </tr>
                        </table>
                    </fieldset>

                    <fieldset>
                        <legend>&nbsp;Login Information&nbsp;</legend>
                        <table>
                            <tr>
                                <td><input path="Js_uname" placeholder="User Name" name="Js_uname"/></td>
                            </tr>
                            <tr>
                                <td><input path="Js_pass" placeholder="Password" name="Js_pass"/></td>
                            </tr>
                            <tr>
                                <td><input path="Js_repass" placeholder="Retype Password" name="Js_repass"/></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <input type="Submit" value="Register Me"
                                            style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html> --%>