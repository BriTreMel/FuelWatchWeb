<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FuelWatch</title>
    </head>
    <body>
        <h1>Login Form</h1>
        <form action="login.jsp">
            <input type="submit" value="Login">
        </form>
        <br>
        <br>
        <form action="registerNewCust.jsp">
            <input type="submit" value="Register">
        </form>
    </body>
</html>