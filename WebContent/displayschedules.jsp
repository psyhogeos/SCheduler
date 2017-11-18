<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--Import Google Icon Font-->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!--Import materialize.css-->
		<link rel="stylesheet" type="text/css" href="materialize.min.css"/>
		<link rel="stylesheet" type="text/css" href="displayschedules.css">
		<title>Your Generated Schedule</title>
		
	</head>
	<body>
		<div id="container">
			<div id="header">
			</div>
			Your Generated Schedule
			<div id="title">
				Your Generated Schedule: <br/>
			</div>
			<div id="scheduleContainer" class="z-depth-4">
				<table id="schedule" class="striped centered responsive-table">
					<thead>
						<tr>
							<th id="scheduleObject">Year</th>
							<th id="scheduleObject">Term</th>
							<th id="scheduleObject" colspan="4">Courses</th>
						</tr>
					</thead>
				<% 
					HashMap<String, String []> semesterPlans = new HashMap<String, String []>();
					int numOfSemesters = 3;
					String [] semesters = {"Spring 2018", "Fall 2018", "Spring 2019"};
					String [] s18 = {"CSCI 350L", "CSCI 360L", "EE 364", "GE C"};
					String [] f18 = {"CSCI 401", "Tech Elec.", "GE D", "Tech Elec."};
					String [] s19 = {"Req. Elec.", "Req. Elec.", "Tech Elec.", "GE D"};
					semesterPlans.put("Spring 2018", s18);
					semesterPlans.put("Fall 2018", f18);
					semesterPlans.put("Spring 2019", s19);
					
					for (int i = 0; i < numOfSemesters; i++) {
						String current = semesters[i];
						String delims = "[ ]";
						String[] tokens = current.split(delims);
						%>
						<tr>
							<% if (i % 2 == 0) { %>
								<td id="scheduleObject"><%= tokens[1] %></td> <%
							} else { %>
								<td id="scheduleObject"> </td> <%
							}
							%>
							<td id="scheduleObject"><%= tokens[0] %></td>
							<% for (int j = 0; j < semesterPlans.get(current).length; j++) {
								%><td id="scheduleObject"><%= semesterPlans.get(current)[j] %></td><%
							}
							%>
						</tr>
						<%
					}
				%>
				</table>
			</div>
		</div>
	</body>
</html>