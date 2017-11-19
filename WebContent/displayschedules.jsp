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
				<div id="navLinks" class="valign-wrapper">
					<a id="savedCoursesLink" class="navLink" href="home.html">My Saved Courses</a>
					<a id="myInfo" class="navLink" href="home.html">My Information</a>
				</div>
			</div>
			<div id="title" contenteditable>
				Your <span style="color: #e0d500">S</span> hedule<span id="C" style="color: #e0d500">C</span>
			</div>
			<!-- <div id="title">
				Your <p id="S">S</p> hedule: <br/>
			</div> -->
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
					HashMap<String, String []> semesterPlans = new HashMap<String, String []>();
					int numOfSemesters = 3;
					String [] semesters = {"Spring 2018", "Fall 2018", "Spring 2019", "Fall 2019", "Spring 2020"};
					String [] s18 = {"CSCI 350L", "CSCI 360L", "EE 364", "GE C"};
					String [] f18 = {"CSCI 401", "Tech Elec.", "GE D", "Tech Elec."};
					String [] s19 = {"Req. Elec.", "Req. Elec.", "Tech Elec.", "GE D"};
					/* String [] f19 = {"A", "B", "C", "D"};
					String [] s20 = {"E", "F", "G", "H"}; */
					semesterPlans.put("Spring 2018", s18);
					semesterPlans.put("Fall 2018", f18);
					semesterPlans.put("Spring 2019", s19);
					/* semesterPlans.put("Fall 2019", f19);
					semesterPlans.put("Spring 2020", s20); */
					// CODE TO TEST ========================
					
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
		<div id="buttonSection">
			<button type="button" id="saveButton" class="btn-large waves-effect waves-light red darken-3">Save</button>
			<button type="button" id="regenerateButton" class="btn-large waves-effect waves-light red darken-3">Generate another SChedule</button>
		</div>
	</body>
</html>