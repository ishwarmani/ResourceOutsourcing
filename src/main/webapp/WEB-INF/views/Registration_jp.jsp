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
<%@ include file="header.jsp" %>
<form action="registration_jp" method="POST">
    <table>
        <tr>
            <td>
                <fieldset style="width: auto;">
                    <legend>&nbsp; Personal Information &nbsp;</legend>
                    <br/>
                    <table>
                        <tr>
                            <td><input name="Jp_name" placeholder="Name"/></td>
                        </tr>
                        <tr>
                            <td><input name="Jp_email" placeholder="Email"/></td>
                        </tr>
                        <tr>
                            <td><input name="Jp_phone" placeholder="Phone"
                                       maxlength="10"/></td>
                        </tr>
                        <tr>
                            <td><textarea name="Jp_address" placeholder="Address"
                                          cols="24" rows="4"></textarea></td>
                        </tr>
                        <tr>
                            <td><input name="Jp_pin" placeholder="Pin" maxlength="6"/></td>
                        </tr>
                        <tr>
                            <td><input name="Jp_city" placeholder="City"/></td>
                        </tr>
                        <tr>
                            <td><select name="Jp_country" placeholder="Country">
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
                            <td><input name="Jp_uname" placeholder="User Name"/></td>
                        </tr>
                        <tr>
                            <td><input name="Jp_pass" placeholder="Password"/></td>
                        </tr>
                        <tr>
                            <td><input name="Jp_repass" type="passworfd"
                                       placeholder="Retype Password"/></td>
                        </tr>
                        <tr>
                            <td align="right"><input type="Submit" value="Register Me"
                                                     style="width: 100px"></td>
                        </tr>
                    </table>
                </fieldset>

            </td>
        </tr>

    </table>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>