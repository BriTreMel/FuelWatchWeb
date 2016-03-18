<%-- 
    Document   : emailClient
    Created on : 11-Mar-2016, 12:17:58
    Author     : Trevor O'Dwyer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
        <title>Order Fuel</title>
    </head>
    <body>
        <div class ="head">
			<div class="container">
				<div class="logo">
					<h1>FuelWatch</h1>
				</div>
				<div class="nav">
					<ul>
						<li><a href="index.jsp">Exit</a></li>
						
					</ul>
				</div>
			</div>
		</div>
        <div class="form-style"> 
            <h1>FuelWatch<span>Order Fuel</span></h1>
            <form method="POST" action="MailDispatcherServlet">
                <div class="section"><span>1</span>Order Form</div>
                <div class="inner-wrap">
                    <label>Customer ID<input type="text" name="subject" size="75"></label>
                    <label>Enter Fuel Type And Amount<textarea name="message" cols="75" rows="2"></textarea></label>
                </div>
                <div class="button-section">
                    <input type="submit" value="ORDER">
                </div>
                        
            </form>
        </div>
    </body>
</html>
