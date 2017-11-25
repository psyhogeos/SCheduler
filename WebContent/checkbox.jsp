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
		Enter Your Courses
	</div>
	<%
		ArrayList<Course> courses = (ArrayList<Course>)request.getAttribute("courses");
		// ArrayList<Course> courses = new ArrayList<Course>(40);
		// int size = courses.size();
		ArrayList<String> indices = new ArrayList<String>();
	%>
	<div id="check-container">
		<form>
	<%
			int count = 0;
	%>
			<div class="check">
	<%
			while (count < courses.size()) {
	%>
				<%=courses.get(count).getPrefix()%> <%=courses.get(count).getNum()%> <input type="checkbox" name="checkbox" value="<%=Integer.toString(count)%>" style="margin-bottom:10px;"/><br />
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
		String c[] = request.getParameterValues("checkbox");
		if (c != null) {
			for (int i = 0; i < c.length; i++) {
				indices.add(c[i]);
				%> <%=c[i]%> <%
			}
		}
		session.setAttribute("indices", indices);
	%>
	<a href="displayschedules.jsp">
	<button class="button" id="generate">
		Generate Course Plans
	</button>
	</a>
</body>
</html>
