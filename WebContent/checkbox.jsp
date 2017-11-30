<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="backend.Course" %>
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
		<h3>Enter the courses you have taken below:</h3>
	</div>
	<%
		ArrayList<Course> courses = (ArrayList<Course>)request.getAttribute("courses");
		// ArrayList<Course> courses = new ArrayList<Course>(40);
		// int size = courses.size();
		ArrayList<String> indices = new ArrayList<String>();
		session.setAttribute("allCourses", courses);
	%>
	<div id="check-container">
		<form method="POST" name="input" action="GeneratorServlet">
	<%
			int count = 0;
	%>
			<div class="check">
	<%
			while (count < courses.size()) {
	%>
				<%=courses.get(count).getPrefix()%> <%=courses.get(count).getNum()%> <input type="checkbox" name="coursesTaken" value="<%=Integer.toString(count)%>" style="margin-bottom:10px;"/><br />
	<%
				if (((count + 1) % 10)== 0 && count != 0) {
	%>
					</div>
					<div class="check">
	<%
				}
				count++;
			}
	%>
			</div>
			<input class="button" type="submit" value="Save Courses" style="margin-top:-100px; margin-left:47%;">
		</form>
	</div>
	<%
		request.setAttribute("allCourses", courses);
		System.out.println("Checkbox.jsp size: " + courses.size());
		// Grabs values of checkboxes and puts into string array
		/* String c[] = request.getParameterValues("checkbox");
		// Checks and makes sure values were grabbed
		if (c != null) {
			for (int i = 0; i < c.length; i++) {
				indices.add(c[i]); */
				%> <%-- <%=c[i]%> --%> <%
		/* 	}
		}
		session.setAttribute("indices", indices); */
	%>
	<!-- <a href="displayschedules.jsp">
	<button class="button" id="generate">
		Generate Course Plans
	</button>
	</a> -->
</body>
</html>
