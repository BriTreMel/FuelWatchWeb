<%-- 
    Document   : oilSuccess
    Created on : 17-Mar-2016, 21:21:48
    Author     : Trevor O'Dwyer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Oil Level</h1>
        <p>The oil level of tank id: <bean:write name="OilUsage" property="product_id" />.</p>
    </body>
</html>
