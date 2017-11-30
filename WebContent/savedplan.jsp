<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="backend.Course" %>
<%@ page import="backend.*" %>
<%-- <%
	ArrayList<ArrayList<Course>> schedule = (ArrayList<ArrayList<Course>>) session.getAttribute("schedules");
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--Import Google Icon Font-->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!--Import materialize.css-->
		<link rel="stylesheet" type="text/css" href="materialize.css"/>
		<link rel="stylesheet" type="text/css" href="savedplan.css">
		<title>Your Saved Schedule</title>
	</head>
	<body>
		<div id="container">
			<div id="header">
				<div id="navLinks" class="valign-wrapper">
					<a id="savedCoursesLink" class="navLink" style="color: #ffdc00">My Saved Schedule</a>
					<a id="myInfo" class="navLink" href="home.html">My Information</a>
				</div>
				<div id="scheduler">
					<h1 id="schedulerTitle"><span style="color: #e0d500">S</span> heduler<span id="schedulerC" style="color: #e0d500">C</span></h1>
				</div>
				<div id="logOutDiv">
					<a id="logOut" class="logOutLink" href="login.jsp">Log Out</a>
				</div>
			</div>
			<div id="title">
				Your Saved <span style="color: #e0d500">S</span> hedule<span id="C" style="color: #e0d500">C</span>
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
					// CODE TO TEST ========================
					// ArrayList of Schedules
					//ArrayList<ArrayList<ArrayList<Course> > > schedules = new ArrayList<ArrayList<ArrayList<Course> > >();
					// Schedule 1
					ArrayList<ArrayList<Course> > schedule1 = new ArrayList<ArrayList<Course> >();
					// Sem 1 in schedule 1
					ArrayList<Course> sched1sem1 = new ArrayList<Course>();
					sched1sem1.add(new Course("CSCI", "350L", 4));
					sched1sem1.add(new Course("CSCI", "360L", 4));
					sched1sem1.add(new Course("EE", "364", 4));
					sched1sem1.add(new Course("GE", "C", 4));
					schedule1.add(sched1sem1);
					// Sem 2 in schedule 1
					ArrayList<Course> sched1sem2 = new ArrayList<Course>();
					sched1sem2.add(new Course("CSCI", "401", 4));
					sched1sem2.add(new Course("Tech", "Elec.", 4));
					sched1sem2.add(new Course("GE", "D", 4));
					sched1sem2.add(new Course("Tech", "Elec.", 4));
					schedule1.add(sched1sem2);
					// Sem 3 in schedule 1
					ArrayList<Course> sched1sem3 = new ArrayList<Course>();
					sched1sem3.add(new Course("Req.", "Elec.", 4));
					sched1sem3.add(new Course("Req.", "Elec.", 4));
					sched1sem3.add(new Course("Tech", "Elec.", 4));
					sched1sem3.add(new Course("GE", "D", 4));
					schedule1.add(sched1sem3);
					//ArrayList<ArrayList<Course>> schedule = schedules.get(0);
					//schedules.add(schedule1);					
					int numOfSemesters = schedule1.size();
					//int index = 0;
					// CODE TO TEST ========================
					String [] semesters = {"Spring 2018", "Fall 2018", "Spring 2019", "Fall 2019", "Spring 2020", "Fall 2020", "Spring 2021", "Fall 2021"};
					
					for (int i = 0; i < schedule1.size(); i++) {
						String current = semesters[i];
						String delims = "[ ]";
						String[] tokens = current.split(delims);
						int maxCourses = 0;
						for (int j = 0; j < schedule1.size(); j++) {
							maxCourses = Math.max(schedule1.get(j).size(), maxCourses);
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
								if (j < schedule1.get(i).size()) {
									%><td id="scheduleObject"><%= schedule1.get(i).get(j).getPrefix() %> <%= schedule1.get(i).get(j).getNum() %><br />
										<font size="2" style="font-style: italic"><%= schedule1.get(i).get(j).getUnits() %> units</font>
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
			<button type="button" id="saveButton" class="btn-large waves-effect waves-light red darken-3">Save</button>
		</div>
	</body>
</html>