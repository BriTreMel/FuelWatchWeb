<%-- 
    Document   : success
    Created on : 16-Feb-2016, 16:13:25
    Author     : Trevor O'Dwyer
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
        <title>Successful Registration Page</title>
    </head>
    <body>
        <div class ="head">
			<div class="container">
				<div class="logo">
					<h1>FuelWatch</h1>
				</div>
				<div class="nav">
                                    <ul>        
                                                <li><a href="registerNewCust.jsp">Register Customer</a></li>
                                                <li><a href ="http://82.141.235.157:50010/mApp">Updates</a></li>
						<li><a href="index.jsp">Exit</a></li>
						
					</ul>
				</div>
			</div>
		</div>
        <div class="form-style">
            <h1>A New Customer Has Been Added</h1>
            
            <div class="inner-wrap">
                Now Register a product for the customer<br>
                <a href="registerProduct.jsp">Register Product</a>
            </div>
        </div>
    </body>
</html>
