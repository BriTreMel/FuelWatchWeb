
<%-- 
    Document   : oilSuccess
    Created on : 17-Mar-2016, 21:21:48
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
        <title>Historic Usage</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['line']});
      google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'Day');
      data.addColumn('number', 'Oil Level That Day');
     

      data.addRows([
        [1,  <bean:write name="OilUsage" property="vol1" />],
        [2,  <bean:write name="OilUsage" property="vol2" />],
        [3,  <bean:write name="OilUsage" property="vol3" />],
        [4,  <bean:write name="OilUsage" property="vol4" />],
        [5,  <bean:write name="OilUsage" property="vol5" />],
        [6,  <bean:write name="OilUsage" property="vol6" />],
        [7,  <bean:write name="OilUsage" property="vol7" />],
        [8,  <bean:write name="OilUsage" property="vol8" />],
        [9,  <bean:write name="OilUsage" property="vol9" />],
        [10, <bean:write name="OilUsage" property="vol10" />],
        [11, <bean:write name="OilUsage" property="vol11" />],
        [12, <bean:write name="OilUsage" property="vol12" />],
        [13, <bean:write name="OilUsage" property="vol13" />],
        [14, <bean:write name="OilUsage" property="vols[13]" />]
      ]);

      var options = {
        chart: {
          title: 'The historic oil usage',
          subtitle: 'in litres per day'
        },
        width: 900,
        height: 500,
        axes: {
          x: {
            0: {side: 'top'}
          }
        }
      };

      var chart = new google.charts.Line(document.getElementById('line_top_x'));

      chart.draw(data, options);
    }
  </script>
       
    </head>
    <body>
         <div class ="head">
			<div class="container">
				<div class="logo">
					<h1>FuelWatch</h1>
				</div>
				<div class="nav">
					<ul>
                                            <l1><a href="loginSuccess.jsp">Home</a></li>
                                            <li><a href="gaugeInfo.jsp">Gauge</a></li>
                                            <li><a href="oilinfo.jsp">Historic Usage</a></li>
                                            <li><a href="emailClient.jsp">Order Fuel</a></li>
                                            <li><a href="index.jsp">Exit</a></li>
                                                
						
					</ul>
				</div>
			</div>
		</div>
        <h1>Historic Usage</h1>
        
        <br>
        <p>The current oil level is: <bean:write name="OilUsage" property="vol1" />.</p>
        
        <br>
        <br>
        <div class="graph">
        <div id="line_top_x"></div>
        </div>
        
         
        
    </body>
</html>
