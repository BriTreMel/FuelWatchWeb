<%-- 
    Document   : oilinfo
    Created on : 17-Mar-2016, 19:39:12
    Author     : Trevor O'Dwyer
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
        
        <div class="form-style">
			<h1>FuelWatch<span> </span></h1>
                        <html:form action="/oilinfo">
                            <bean:write name="OilUsage" property="regError"
                            filter="false"/>
                             
                        <div class="section"><span>1</span>Enter Customer ID</div>
                        <div class="inner-wrap">
                            <label>Customer ID:<html:text property="product_id" /></label>     
                        </div>
                            
                        </html:form>
        </div>
        
    </body>
</html>
