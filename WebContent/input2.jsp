<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="fuzzy-autocomplete.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!--<link rel="stylesheet" type="text/css" href="input.css">-->
	<script>
		function scroll1() {
			window.scrollTo({
    		"behavior": "smooth",
    		"top": 515
			});
		}
		function scroll2() {
			window.scrollTo({
    		"behavior": "smooth",
    		"top": 1030
			});
		}
		function sendData() {
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET", "inputvalidate.jsp?major=" + document.input.major.value +
						"&semesters=" + document.input.semesters.value, false);
				xhttp.send();
				if(xhttp.responseText.trim().length > 0) {
					document.getElementById("formerror").innerHTML = xhttp.responseText;
					return false;
				}
				return true;
		}
	</script>
	<title>Enter your information</title>
</head>

<body>
	<div id="formerror"></div>
	<div id="container">
	<div id="header">	
	</div>
	
	<form method="POST" name="input" style="margin-top:125px;" action="CourseJDBC" onSubmit="return sendData();">
		<div id="section1" class="section">
			Enter your major: <br/>
			<input type="text" name="major" id="major" style="margin-top:5px; height:25px;">
			<!-- <input type="button" onclick="scroll1()"> -->
			<button id="button1" onclick="scroll1()"><img src="https://image.flaticon.com/icons/png/512/16/16049.png"/></button>
		</div>
		<div id="section2" class="section">
			Enter your remaining semesters before graduation: <br/>
			<input type="text" name="semesters" id="semesters" style="margin-top:5px; height:25px;">
			<!--Select your graduation date: <br/>
			<select name="grad-date" style="margin-top:5px; height:31px;">
  				<option value="20181">Spring 2018</option>
  				<option value="20183">Fall 2018</option>
  				<option value="20191">Spring 2019</option>
  				<option value="20193">Fall 2019</option>
  				<option value="20201">Spring 2020</option>
  				<option value="20203">Fall 2020</option>
  				<option value="20211">Spring 2021</option>
			</select>-->
			<!-- <input type="button" onclick="scroll2()" value="submit"> -->
			<button id="button2" onclick="scroll2()"><img src="https://image.flaticon.com/icons/png/512/16/16049.png"/></button>
		</div>
		<div id="section3" class="section">
			<input type="submit" value="submit">
		</div>
	</form>
	</div>
	<script>
		fuzzyAutocomplete($('#major'), [
			"Aerospace Engineering",
			"Astronautical Engineering",
			"Biomedical Engineering",
			"Chemical Engineering",
			"Civil Engineering",
			"Computer Engineering Computer Science",
			"Computer Science", 
			"Computer Science Business Administration",
			"Computer Science Games",
			"Electrical Engineering",
			"Environmental Engineering",
			"Mechanical Engineering"
		]);
	</script>
</body>
</html>
