<%-- 
    Document   : productSucces
    Created on : 08-Mar-2016, 13:29:07
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
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Registration Success</title>
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
            <h1>You Have Successfully Registered A Product</h1>
            <div class="inner-wrap">
                <p>A new product has been successfully registered.<br>
                It is now ready to use.</p>
            </div>
        </div>
    </body>
</html>
