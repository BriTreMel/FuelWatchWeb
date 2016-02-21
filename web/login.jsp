<%-- 
    Document   : login
    Created on : 18-Feb-2016, 17:56:03
    Author     : mel76
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FuelWatch login</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
    </head>
    <body>
        <h1>Login Form</h1>
        <html:form action="/login">
            <table border="1">
                <tbody>
                    <tr>
                        <td colspan="2">
                            <bean:write name="LoginForm" property="error" filter="false"/>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Enter your email:</td>
                        <td><html:text property="email" /></td>
                    </tr>
                    <tr>
                        <td>Enter your password:</td>
                        <td><html:text property="password" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><html:submit value="Login" /></td>
                    </tr>
                </tbody>
            </table>
        </html:form>
    </body>
</html:html>  
