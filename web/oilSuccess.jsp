
<%-- 
    Document   : oilSuccess
    Created on : 17-Mar-2016, 21:21:48
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
        [1,  <bean:write name="OilUsage" property="volume_level" />],
        [2,  <bean:write name="OilUsage" property="volume_level" />],
        [3,  <bean:write name="OilUsage" property="volume_level" />],
        [4,  <bean:write name="OilUsage" property="vols[3]" />],
        [5,  <bean:write name="OilUsage" property="vols[4]" />],
        [6,  <bean:write name="OilUsage" property="vols[5]" />],
        [7,  <bean:write name="OilUsage" property="vols[6]" />],
        [8,  <bean:write name="OilUsage" property="vols[7]" />],
        [9,  <bean:write name="OilUsage" property="vols[8]" />],
        [10, <bean:write name="OilUsage" property="vols[9]" />],
        [11, <bean:write name="OilUsage" property="vols[10]" />],
        [12, <bean:write name="OilUsage" property="vols[11]" />],
        [13, <bean:write name="OilUsage" property="vols[12]" />],
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
						<li><a href="index.jsp">Exit</a></li>
						
					</ul>
				</div>
			</div>
		</div>
        <h1>Historic Usage</h1>
        <p>The current oil level is: <bean:write name="OilUsage" property="volume_level" />.</p>
        <br>
        <p>The current oil level is: <bean:write name="OilUsage" property="volume_level" />.</p>
        <br>
        <p>The current oil level is: <bean:write name="OilUsage" property="vols[0]" />.</p>
        <br>
        <p>The current oil level is: <bean:write name="OilUsage" property="vols[1]" />.</p>
        <br>
        <p>The current oil level is: <bean:write name="OilUsage" property="vols[2]" />.</p>
        <br>
        <p>The current oil level is: <bean:write name="OilUsage" property="vols[3]" />.</p>
        <br>
        
        <br>
        <br>
        <div id="line_top_x"></div>
        
         
        
    </body>
</html>
