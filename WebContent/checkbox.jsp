<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="checkbox.css">
<title>Enter Your Courses</title>
</head>
<body>
	<div id="header"></div>
	<div id="title">
		Enter Your Courses
	</div>
	<div id="check-container">
	<%
			for (int i = 0; i < 4; i++) {
	%>
				<div class="check">
					
	<%
						for (int j = 0; j < 10; j++) {
	%>
							Class <%=(i+1)*(j+1)%><input type="checkbox" style="margin-bottom:10px;"/><br />
	<%
						}
	%>
					
				</div>
	<%
			}
	%>
	</div>
	<button id="generate" onclick="/checkbox.jsp">
		Enter Courses 
	</button>
</body>
</html>