<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>


<!DOCTTYPE html>
<html>
	<head>
		<meta charset = "UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script>
			var wss_i =0;
			var wss_array = ["smart ","safe  ","secure"];
			var wss_elem;
			function wssNext(){
				wss_i ++;
				wss_elem.style.opacity = 0;
				if(wss_i > (wss_array.length - 1)){
					wss_i = 0;
				}
				setTimeout('wssSlide()', 1000);
			}
			function wssSlide(){
				wss_elem.innerHTML = wss_array[wss_i];
				wss_elem.style.opacity = 1;
				setTimeout('wssNext()',2000);
			}
		
		</script>
		
		<title>Testing For the FuelWatch WEBSITE</title>
	</head>
	
	<body>
		
		<div class ="head">
			<div class="container">
				<div class="logo">
					<h1><a href = "#">FuelWatch</a></h1>
				</div>
				<div class="nav">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
                                                <li><a href="#">Contact</a></li>
                                                <li><a href ="http://82.141.235.157:50010/mApp">Updates</a></li>
						<li><a href="login.jsp">Log In</a></li>
						
					</ul>
				</div>
			</div>
		</div>
		
		<div id = "container">
			<div id = "banner">
				<h1>FuelWatch is <span id ="wss"></span></h1>
				<script>wss_elem = document.getElementById("wss"); wssSlide();</script>				
			</div>
			
			
		
			<div id="content">
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				
			
				
			</div>
			
			<div id = "banner2">
				<div class="flip3d">
					<div class="back">BOX 1 - Back</div>
					<div class="front">Box 1 - Front</div>
				</div>
		
				<div class="flip3d">
					<div class="back">BOX 2 - Back</div>
					<div class="front">Box 2 - Front</div>
				</div>
		
				<div class="flip3d">
					<div class="back">BOX 3 - Back</div>
					<div class="front">Box 3 - Front</div>
				</div>			
			</div>
			
			<div id="content">
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				<p>Contents go  here ok!!</p>
				
			
				
			</div>
		
		
		</div>
	
	
	
	</body>
</html>
