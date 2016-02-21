<%-- 
    Document   : loginSuccess
    Created on : 21-Feb-2016, 19:41:00
    Author     : mel76
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FuelWatch</title>
    </head>
    <body>
        <h1>Successfully logged in to site!</h1>
         <p>Your name is: <bean:write name="LoginForm" property="email" />.</p>

        <p>Your password is: 

               <bean:write name="LoginForm" property="password" />.</p>
        
        <p>
    <TODO> main body of website goes here!</TODO>
            
        </p>
        
    </body>
</html>
