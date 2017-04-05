<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
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
<%-- <%@taglib uri="/struts-tags" prefix="s"%> --%>

<form action="registration_jS" method="POST">
    <%-- onsubmit="return confirm('Are Your Sure about Submit?');" >--%>
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
</html>