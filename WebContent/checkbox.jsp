<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
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
	<%
		// ArrayList<Course> courses = (ArrayList<Course>)request.getAttribute("GetCourses");
		// ArrayList<Course> courses = new ArrayList<Course>(40);
		// int size = courses.size();
		ArrayList<String> indices = new ArrayList<String>();
	%>
	<div id="check-container">
		<form>
	<%
			for (int i = 0; i < 4; i++) {
	%>
				<div class="check">
					
	<%
						for (int j = 0; j < 10; j++) {
							if ((i+1)*(j+1) >= 40) {
								
							}
							else {
								// String pre = courses.get((i+1)*(j+1)-1).getPrefix();
								// String num = courses.get((i+1)*(j+1)-1).getNum();
		%>
								Course <%=(i+1)*(j+1)%> <input type="checkbox" name="checkbox" value="<%=Integer.toString((i+1)*(j+1))%>" style="margin-bottom:10px;"/><br />
								
	<%						
							}
						}
	%>
				</div>
	<%
			}
	%>
		<input class="button" type="submit" value="Save Courses" style="margin-top:-100px; margin-left:47%;">
	</form>
	</div>
	<%
		String c[] = request.getParameterValues("checkbox");
		if (c != null) {
			for (int i = 0; i < c.length; i++) {
				indices.add(c[i]);
				%> <%=c[i]%> <%
			}
		}
		session.setAttribute("indices", indices);
	%>
	<a href="output.jsp">
	<button class="button" id="generate">
		Generate Course Plans
	</button>
	</a>
</body>
</html>
