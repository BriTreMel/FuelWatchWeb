<!-- Created by : Bridget Purcell
                 Melanie Cunningham
                 Trevor O'Dwyer
    Group Name : BriTreMel 
    3rd year project LIT 2016.-->

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>


<html>
	<head>
		<meta charset = "UTF-8"/>
		<link rel="stylesheet" type="text/css" href="index_style.css">
		
		<script type="text/javascript"> 
			var i = 0; 
			var image = new Array();   
			// LIST OF IMAGES 
			image[0] = "images/image_1.jpg"; 
			image[1] = "images/image_2.jpg"; 
			image[2] = "images/image_3.jpg";    
			var k = image.length-1;    

			var caption = new Array(); 

			// LIST OF CAPTİONS  
			caption[0] = "FuelWatch is Brilliant"; 
			caption[1] = "FuelWatch is Tremendous"; 
			caption[2] = "FuelWatch is Magnificant";   

			function swapImage(){ 
						var el = document.getElementById("mydiv"); 
						el.innerHTML=caption[i]; 
						var img= document.getElementById("slide"); 
						img.src= image[i];  
						if(i < k ) { i++;}  
						else  { i = 0; } 
						setTimeout("swapImage()",5000);  
			} //end of swap image

			function addLoadEvent(func) { 
						var oldonload = window.onload; 
						if (typeof window.onload != 'function') { 
						window.onload = func; 
			} 
			else { 
					window.onload = function() { 
			if (oldonload) { 
							oldonload(); 
			} 
			func();}}}  
			addLoadEvent(function() { 
			swapImage(); });

			function showhide1()
					{
						var div = document.getElementById('answer1');
						var text = document.getElementById("button");
						if (div.style.display !== "none") {
						div.style.display = "none";
							text.innerHTML = "+";
							}
					else {
						div.style.display = "block";
						text.innerHTML = "-";
						}
					}
			function showhide2()
					{
						var div = document.getElementById('answer2');
						var text = document.getElementById("button2");
						if (div.style.display !== "none") {
						div.style.display = "none";
							text.innerHTML = "+";
							}
					else {
						div.style.display = "block";
						text.innerHTML = "-";
						}
					}
			function showhide3()
					{
						var div = document.getElementById('answer3');
						var text = document.getElementById("button3");
						if (div.style.display !== "none") {
						div.style.display = "none";
							text.innerHTML = "+";
							}
					else {
						div.style.display = "block";
						text.innerHTML = "-";
						}
					}
			function showhide4()
					{
						var div = document.getElementById('answer4');
						var text = document.getElementById("button4");
						if (div.style.display !== "none") {
						div.style.display = "none";
							text.innerHTML = "+";
							}
					else {
						div.style.display = "block";
						text.innerHTML = "-";
						}
					}
			
			</script>
			


		
		<title>WELCOME TO FUELWATCH</title>
		
	</head>
	<body>
		<div class ="head">
			<div class="container">
				<div class="logo">
					<h1><a href = "#">FuelWatch</a></h1>
				</div>
				<div class="nav">
					<ul>
						<li><a href="#about">About</a></li>
						<li><a href="#faq">FAQ</a></li>
						<li><a href="#contact">Contact</a></li>
						<li><a href ="login.jsp">Login</a></li>
					</ul>
				</div>
			</div>			
		</div>
		
		<div class="main_body">
		 <div class = "slide_show">
			<table style="border:none;background-color:#FFFFFF;"> 
				<tr> 
					<td> 
						<img name="slide" id="slide" alt ="my images" height="400px" width="1080px" src="images/image_1.jpg"/> 
					</td> 
				</tr> 
				<tr> 
					<td align="center"style="font:small-caps bold 15px georgia; color:red;"> 
						<div id ="mydiv"></div> 
				</tr> 
					</td> 
			</table> 
		 </div>
		 
			<div class="about">
					<h1 id="about">ABOUT</h1>
				<div class="inner">
					<br><br>
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
				
			</div>
			
			<div class="faq">
				<h1 id="faq">F.A.Q</h1>
				<div class="inner">
						<br><br><br>
					    What type of tank is suitable for use with the FuelWatch system? <button id="button"onclick="showhide1()">+</button><br><br>
						<div id="answer1">
						The FuelWatch system is suitable for all types of tanks.
						It is suitable for both old and new plastic and steel tanks up to 3m in height.
						If you have a steel tank please contact our customer support team for further information.<br><br>
						</div>
						What type of fuels can FuelWatch monitor? <button id="button2" onclick="showhide2()">+</button><br><br>
						<div id="answer2">
						The system is suitable to monitor diesel fuel, kerosene, gas oil types.<br>
						FuelWatch can also be used to monitor other liquids such as water and some chemicals 
						but for suitability please check with customer support.<br><br>
						</div>
						What happens if I forget my password?  <button id="button3" onclick="showhide3()">+</button><br><br>
						<div id="answer3">
						If you have forgotten your username or password please contact customer support<br><br>
						</div>
						I am unhappy with the information that I have entered into the system. How do I change this?  <button id="button4" onclick="showhide4()">+</button><br><br>
						<div id="answer4">
						To make a change or amend your tank details please contact customer support.<br><br>
						</div>
			
				</div>	
			</div>
			
				<div class="contact">
						<h1 id="contact">CONTACT</h1>
					<div class="inner">
						<p>CONTACT US<br><br><br>
						WEBSITE: http://www.doranoil.ie/<br>
						EMAIL:   info.fuelwatch@google.com<br>
						PHONE:	 062 595959<br></p>
					</div>
				</div>
				
				<div class="footer">
					<br>
					CREATED BY:  BriTreMel.<br> 
					DEVELOPED FOR: 3rd Year Project.<br>
					IN CONJUNCTION WITH: Doran Oil><br>
				</div>
				
				
				
		 
		</div>
		
	</body>
</html>