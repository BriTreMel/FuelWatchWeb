<%-- 
    Document   : registerNewCust
    Created on : 16-Feb-2016, 15:11:34
    Author     : mel76
     Created by : Bridget Purcell
                 Melanie Cunningham
                 Trevor O'Dwyer
    Group Name : BriTreMel 
    3rd year project LIT 2016.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
        <title>Register New Customer</title>
    </head>
    <body>
		<div class ="head">
			<div class="container">
				<div class="logo">
					<h1>FuelWatch</h1>
				</div>
				<div class="nav">
					<ul>
                                            <li><a href="registerProduct.jsp">Register Project</a></li>
                                            <li><a href ="http://82.141.235.157:50010/mApp">Updates</a></li>
                                            <li><a href="index.jsp">Exit</a></li>
						
					</ul>
				</div>
			</div>
		</div>
        <div class="form-style">
            <h1>FuelWatch<span>Register New Customer</span></h1>
            <html:form action="/register">
                <bean:write name="RegisterForm" property="regError"
                            filter="false"/>
                <div class="section"><span>1</span>Security Information</div>
                <div class="inner-wrap">
                    <label>E-mail<html:text property="email" /></label>
                    <label>Password<html:text property="password" /></label>
                    <label>Confirm Password<html:text property="password2" /></label>		
                </div>
                <div class="section"><span>2</span>Security Question</div>	
                <div class="inner-wrap">
                    <select>
                        <option>What is your mother's maiden name?</option>
                        <option>What was your first pet's name?</option>
                        <option>What is your favourite sport?</option>
                    </select>
                    <label>Answer<html:text property="securityA" /></label>
                </div>

                <div class="section"><span>3</span>Name &amp; Address Information</div>
                <div class="inner-wrap">
                    <label>First Name <html:text property="fname" /></label>
                    <label>Second Name <html:text property="sname" /></label>
                    <label>House Number<html:text property="add1" /></label>
                    <label>Street<html:text property="add2" /></label>
                    <label>Town<html:text property="add3" /></label>
                    <label>County<html:text property="add4" /></label>
                    <label>Eircode<html:text property="eircode" /></label>
                </div>
                <div class="section"><span>4</span>Contact Information</div>
                <div class="inner-wrap">
                    <label>Mobile Number<html:text property="contact1" /></label>
                    <label>House Number<html:text property="contact2" /></label>
                    <label>Alternative Number<html:text property="contact3" /></label>
                </div>
                <div class="button-section">
                    <html:submit value="Register" />
                    

                </div>
            </html:form>
        </div>
    </body>
</html>