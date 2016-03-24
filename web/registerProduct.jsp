<%-- 
    Document   : registerProduct
    Created on : 07-Mar-2016, 21:15:32
    Author     : Trevor O'Dwyer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formStyleSheet.css">
        <title>Register Product</title>
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
            <h1>FuelWatch<span>Register Product</span></h1>
            <html:form action="/registerProd">
                <bean:write name="ProductForm" property="regError"
                                    filter="false"/>
                        &nbsp;
                        <div class="section"><span>1</span>Product ID</div>
                            <div class="inner-wrap">
                                <label>Enter Product ID:<html:text property="product_id" /></label>
                            </div>
                            <div class="section"><span>2</span>Customer ID</div>
                                <div class="inner-wrap">
                                    <label>Enter Customer ID<html:text property="customer_id"/></label>
                                </div>
                                <div class="section"><span>3</span>Product Information</div>
                                    <div class="inner-wrap">
                                        <label>Minimum Level<html:text property="customer_min_level"/></label>
                                        <label>Product Serial Number<html:text property="serial_number"/></label>
                                        <label>Fuel Type ID<html:text property="fuel_type_id"/></label>
                                        <label>Tank Type Id<html:text property="tank_type_id"/></label>
                                    </div>
                                    
                                    <div class="button-section">
                                        <html:submit value="Register Product" />
                                    </div>
                        
                
            </html:form>
        </div>
        
        
        
        
        
        
        <html:form action="/registerProd">
            <tbody border="1">
                <tr>
                    <td colspan="2">
                        <bean:write name="ProductForm" property="regError"
                                    filter="false"/>
                        &nbsp;
                        </td>
                </tr>
                <tr>
                    <td>Enter Product ID:</td>
                    <td><html:text property="product_id" /></td>
                </tr>
                <tr>
                    <td>Enter Customer Id:</td>
                    <td><html:text property="customer_id"/></td>
                </tr>
                <tr>
                    <td>Enter Minimum Level:</td>
                    <td><html:text property="customer_min_level"/></td>
                </tr>
                <tr>
                    <td>Enter Product Serial Number:</td>
                    <td><html:text property="serial_number"/></td>
                </tr>
                <tr>
                    <td>Enter Fuel Type ID:</td>
                    <td><html:text property="fuel_type_id"/></td>
                </tr>
                <tr>
                    <td>Enter Tank Type ID:</td>
                    <td><html:text property="tank_type_id"/></td>
                </tr>
                <tr>
                    <td><html:submit value="Register"/></td>
                </tr>
                   
            
            </tbody>
            
    </html:form>
    </body>
</html>
