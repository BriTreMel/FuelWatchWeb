<%-- 
    Document   : gaugeInfo
    Created on : 22-Mar-2016, 20:38:27
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
        <title>Gauge</title>
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
        
    </head>
    <body>
        <div class="form-style">
			<h1>FuelWatch<span> </span></h1>
                        <html:form action="/gaugeInfo">
                            <bean:write name="GaugeUsage" property="regError"
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
