<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="backend.Course" %>
<%@ page import="backend.*" %>
<%
	ArrayList<ArrayList<ArrayList<Course>>> schedules = (ArrayList<ArrayList<ArrayList<Course>>>) session.getAttribute("schedules");
	int index = (int)session.getAttribute("scheduleIndex");
	index -= 1;
	session.setAttribute("scheduleIndex", index);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--Import Google Icon Font-->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!--Import materialize.css-->
		<link rel="stylesheet" type="text/css" href="materialize.css"/>
		<link rel="stylesheet" type="text/css" href="displayschedules.css">
		<title>Your Generated Schedule</title>
	</head>
	<body>
		<div id="container">
			<div id="header">
				<div id="navLinks" class="valign-wrapper">
					<a id="savedCoursesLink" class="navLink" href="home.html">My Saved Schedule</a>
					<a id="myInfo" class="navLink" href="home.html">My Information</a>
				</div>
				<div id="scheduler">
					<h1 id="schedulerTitle"><span style="color: #e0d500">S</span> heduler<span id="schedulerC" style="color: #e0d500">C</span></h1>
				</div>
			</div>
			<div id="title">
				Your <span style="color: #e0d500">S</span> hedules<span id="C" style="color: #e0d500">C</span>
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
					String [] semesters = {"Spring 2018", "Fall 2018", "Spring 2019", "Fall 2019", "Spring 2020", "Fall 2020", "Spring 2021", "Fall 2021"};
					for (int i = 0; i < schedules.get(index).size(); i++) {
						String current = semesters[i];
						String delims = "[ ]";
						String[] tokens = current.split(delims);
						int maxCourses = 0;
						for (int j = 0; j < schedules.get(index).size(); j++) {
							maxCourses = Math.max(schedules.get(index).get(j).size(), maxCourses);
						}
						%>
						<tr>
							<% if (i % 2 == 0) { %>
								<td style="font-weight:bold" id="scheduleObject"><%= tokens[1] %></td> <%
							} else { %>
								<td id="scheduleObject"> </td> <%
							}
							%>
							<td style="font-weight:bold" id="scheduleObject"><%= tokens[0] %></td>
							<% for (int j = 0; j < maxCourses; j++) {
								if (j < schedules.get(index).get(i).size()) {
									%><td id="scheduleObject"><%= schedules.get(index).get(i).get(j).getPrefix() %> <%= schedules.get(index).get(i).get(j).getNum() %><br />
										<font size="2" style="font-style: italic"><%= schedules.get(index).get(i).get(j).getUnits() %> units</font>
									</td><%
								} else {
									%> <td></td> <%
								}
							}
							%>
						</tr><%
					}
					%>
				</table>
			</div>
		</div>
		<div id="buttonSection">
			<%
			if (index == 0) { %>
				<a href="displayschedules-.jsp" type="button" id="prevButton" class="btn-large waves-effect waves-light red darken-3" style="visibility:hidden;">Previous SChedule</a>
			<% }
			else { %>
				<a href="displayschedules-.jsp" type="button" id="prevButton" class="btn-large waves-effect waves-light red darken-3">Previous SChedule</a>
			<% }
			%>
			<button type="button" id="saveButton" class="btn-large waves-effect waves-light red darken-3">Save</button>
			<%
			if (index == 3) { %>
				<a href="displayschedules+.jsp" type="button" id="nextButton" class="btn-large waves-effect waves-light red darken-3" style="visibility:hidden;">Next SChedule</a>
			<% }
			else { %>
				<a href="displayschedules+.jsp" type="button" id="nextButton" class="btn-large waves-effect waves-light red darken-3">Next SChedule</a>
			<% }
			%>
		</div>
	</body>
</html>