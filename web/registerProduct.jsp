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
        <title>Register Product</title>
    </head>
    <body>
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
