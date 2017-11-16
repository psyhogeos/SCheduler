<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="select2.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="input.css">
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
	</script>
	<title>Enter your information</title>
</head>

<body>
	<div id="container">
	<div id="header">	
	</div>
	<div id="section1" class="section">
		<form method="POST" style="margin-top:125px;" onSubmit="return false;">
			Enter your major: <br/>
			<select class="major" name="major" id="major" style="margin-top:5px; height:25px;" width="50%">
				<optgroup label="Viterbi School of Engineering">
					<option value="CSCI">Computer Science</option>
					<option value="CSBA">Computer Science Business Administration</option>
					<option value="CECS">Computer Engineering Computer Science</option>
				</optgroup>
			</select>
				
			<!-- <input type="button" onclick="scroll1()"> -->
		</form>
		<button id="button1" onclick="scroll1()"><img src="https://image.flaticon.com/icons/png/512/16/16049.png"/></button>
		<script>
			$(document).ready(function() {
			    $('.major').select2();
			});
		</script>
	</div>
	<div id="section2" class="section">
		<form method="POST" style="margin-left:41%;">
			Select your graduation date: <br/>
			<select name="grad-date" style="margin-top:5px; height:31px;">
  				<option value="20181">Spring 2018</option>
  				<option value="20183">Fall 2018</option>
  				<option value="20191">Spring 2019</option>
  				<option value="20193">Fall 2019</option>
  				<option value="20201">Spring 2020</option>
  				<option value="20203">Fall 2020</option>
  				<option value="20211">Spring 2021</option>
			</select>
			<!-- <input type="button" onclick="scroll2()" value="submit"> -->
		</form>
		<button id="button2" onclick="scroll2()"><img src="https://image.flaticon.com/icons/png/512/16/16049.png"/></button>
	</div>
	<div id="section3" class="section">
		<form method="POST">
			<input type="button" value="submit">
		</form>
	</div>
	</div>
</body>
</html>