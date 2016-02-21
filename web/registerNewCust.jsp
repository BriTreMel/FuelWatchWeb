<%-- 
    Document   : registerNewCust
    Created on : 16-Feb-2016, 15:11:34
    Author     : mel76
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Register New Customer</title>
    </head>
    
    <body>
        <h1>Register New FuelWatch Customer</h1>
        
     <html:form action="/register">
            <table border="1" width="550" cellspacing="5" cellpadding="5">
                
                <tbody>
                    <tr>
                        <td colspan="2">
                            <bean:write name="RegisterForm" property="regError"
                                       filter="false"/>
                            &nbsp;</td>
                    </tr>
                     <tr>
                        <td colspan="2">
                         CUSTOMER SECURITY DETAILS
                            </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><html:text property="email" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><html:text property="password" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><html:text property="password2" /></td>
                    </tr>
                    <tr>
                        <td>Security Question</td>
                        <td>What is your mother's maiden name?</td>
                    </tr>
                    <tr>
                        <td>Security Answer</td>
                        <td><html:text property="securityA" /></td>
                    </tr>
                 
                     <tr>
                         <td colspan="2">CUSTOMER CONTACT DETAILS</td>
                     
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><html:text property="fname" /></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><html:text property="sname" /></td>
                    </tr>
                    <tr>
                        <td>House No</td>
                        <td><html:text property="add1" /></td>
                    </tr>
                    <tr>
                        <td>Street</td>
                        <td><html:text property="add2" /></td>
                    </tr>
                    <tr>
                        <td>Town</td>
                        <td><html:text property="add3" /></td>
                    </tr>
                    <tr>
                        <td>County</td>
                        <td><html:text property="add4" /></td>
                    </tr>
                    <tr>
                        <td>Eircode</td>
                        <td><html:text property="eircode" /></td>
                    </tr>                
                    
                    <tr>
                        <td>Mobile Number</td>
                        <td><html:text property="contact1" /></td>
                    </tr>
                    <tr>
                        <td>House Number</td>
                        <td><html:text property="contact2" /></td>
                    </tr>
                    <tr>
                        <td>Alternative Number</td>
                        <td><html:text property="contact3" /></td>
                    </tr>
                    <tr>
                        
                        <td colspan="2"><html:submit value="Register" /> </td>
                    </tr>
                </tbody>
            </table>     
        </html:form>
    </body>
</html>
