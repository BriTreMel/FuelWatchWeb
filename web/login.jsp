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
        <title>FuelWatch Customer Login</title>
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
    </head>
        <body>

	<div class="form-style">
			<h1>FuelWatch<span> </span></h1>
                        <html:form action="/login">
			
				<div class="section"</div>
				<div class="inner-wrap">
					<label>E-mail<html:text property="email" /></label>
					<label>Password<html:text property="password" /></label>
				</div>
				
				<div class="button-section">
                                    <html:submit value="Login" />
				
                                    <input type="submit" name="reset" value="Reset Password" />
				</div>
			</html:form>
	</div>
</html:html>  
