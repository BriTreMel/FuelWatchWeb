<%-- 
    Document   : oilinfo
    Created on : 17-Mar-2016, 19:39:12
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
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oil Usage Information</title>
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
    </head>
    <body>
        <div class ="head">
			<div class="container">
				<div class="logo">
					<h1>FuelWatch</h1>
				</div>
				<div class="nav">
					<ul>
                                            
                                            <li><a href="gaugeInfo.jsp">Gauge</a></li>
                                            <li><a href="oilinfo.jsp">Historic Usage</a></li>
                                            <li><a href="emailClient.jsp">Order Fuel</a></li>
                                            <li><a href="index.jsp">Exit</a></li>
                                                
						
					</ul>
				</div>
			</div>
		</div>
        
        <div class="form-style">
			<h1>FuelWatch<span> </span></h1>
                        <html:form action="/oilinfo">
                            <bean:write name="OilUsage" property="regError"
                            filter="false"/>
                             
                        <div class="section"><span>1</span>Enter Product ID</div>
                        <div class="inner-wrap">
                            <label>Product ID:<html:text property="product_id" /></label>     
                        </div>
                        <div class="button-section">
                                    <html:submit value="SEARCH" />
                        </div>
                            
                        </html:form>
        </div>
        
    </body>
</html>
