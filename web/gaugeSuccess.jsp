<%-- 
    Document   : gaugeSuccess
    Created on : 22-Mar-2016, 21:50:16
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
        <title>Current Oil Level</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
      google.charts.load('current', {'packages':['gauge']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ['Current Level',<bean:write name="GaugeUsage" property="volume_level" /> ],
          
        ]);

        var options = {
          width: 600, height: 300,
          redFrom: 0, redTo: 10,
          yellowFrom:10, yellowTo: 20,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

        chart.draw(data, options);

        setInterval(function() {
          data.setValue(0, 1,<bean:write name="GaugeUsage" property="volume_level" /> );
          chart.draw(data, options);
        }, 13000);
		
        
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
                                               
                                                <li><a href="gaugeInfo.jsp">Gauge</a></li>
                                                <li><a href="oilinfo.jsp">Historic Usage</a></li>
                                                <li><a href="emailClient.jsp">Order Fuel</a></li>
						<li><a href="index.jsp">Exit</a></li>
						
					</ul>
				</div>
			</div>
		</div>
        <div class="form-style">
        <h1>Current OIL Level</h1>
        <p>The current oil level is: <bean:write name="GaugeUsage" property="volume_level" />%.</p>
            <div class="inner-wrap">
                <div id="chart_div" style="width: 500px; height: 250px;"></div>
            </div>
        </div>
    </body>
</html>
