<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="backend.Course" %>
<%@ page import="backend.*" %>
<%
	ArrayList<ArrayList<ArrayList<Course>>> schedules = (ArrayList<ArrayList<ArrayList<Course>>>) request.getAttribute("schedules");
	Integer index = 0;
	response.getWriter().write(index);
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
		<script>
			function refresh() {
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET", "RefreshServlet?index=" + document.input.major.value +
						"&semesters=" + document.input.semesters.value, false);
				xhttp.send();
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
	</head>
	<body>
		<div id="container">
			<div id="header">
				<div id="navLinks" class="valign-wrapper">
					<a id="savedCoursesLink" class="navLink" href="home.html">My Saved Courses</a>
					<a id="myInfo" class="navLink" href="home.html">My Information</a>
				</div>
			</div>
			<div id="title">
				Your <span style="color: #e0d500">S</span> hedule<span id="C" style="color: #e0d500">C</span>
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
					//ArrayList<ArrayList<Course> > schedule1 = new ArrayList<ArrayList<Course> >();
					// Sem 1 in schedule 1
					/* ArrayList<Course> sched1sem1 = new ArrayList<Course>();
					sched1sem1.add(new Course("CSCI", "350L", 4));
					sched1sem1.add(new Course("CSCI", "360L", 4));
					sched1sem1.add(new Course("EE", "364", 4));
					sched1sem1.add(new Course("GE", "C", 4)); */
					//schedule1.add(sched1sem1);
					// Sem 2 in schedule 1
					/* ArrayList<Course> sched1sem2 = new ArrayList<Course>();
					sched1sem2.add(new Course("CSCI", "401", 4));
					sched1sem2.add(new Course("Tech", "Elec.", 4));
					sched1sem2.add(new Course("GE", "D", 4));
					sched1sem2.add(new Course("Tech", "Elec.", 4));
					schedule1.add(sched1sem2); */
					// Sem 3 in schedule 1
					/* ArrayList<Course> sched1sem3 = new ArrayList<Course>();
					sched1sem3.add(new Course("Req.", "Elec.", 4));
					sched1sem3.add(new Course("Req.", "Elec.", 4));
					sched1sem3.add(new Course("Tech", "Elec.", 4));
					sched1sem3.add(new Course("GE", "D", 4));
					schedule1.add(sched1sem3); */
					//ArrayList<ArrayList<Course>> schedule = schedules.get(0);
					//schedules.add(schedule1);					
					//int numOfSemesters = schedule.size();
					//int index = 0;
					// CODE TO TEST ========================
					/* HashMap<String, String []> semesterPlans = new HashMap<String, String []>();
					int numOfSemesters = 3;
					String [] semesters = {"Spring 2018", "Fall 2018", "Spring 2019", "Fall 2019", "Spring 2020"};
					String [] s18 = {"CSCI 350L", "CSCI 360L", "EE 364", "GE C"};
					String [] f18 = {"CSCI 401", "Tech Elec.", "GE D", "Tech Elec."};
					String [] s19 = {"Req. Elec.", "Req. Elec.", "Tech Elec.", "GE D"};
					
					semesterPlans.put("Spring 2018", s18);
					semesterPlans.put("Fall 2018", f18);
					semesterPlans.put("Spring 2019", s19); */
					
					/* String [] f19 = {"A", "B", "C", "D"};
					String [] s20 = {"E", "F", "G", "H"}; */
					/* semesterPlans.put("Fall 2019", f19);
					semesterPlans.put("Spring 2020", s20); */
					// CODE TO TEST ========================
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
								<td id="scheduleObject"><%= tokens[1] %></td> <%
							} else { %>
								<td id="scheduleObject"> </td> <%
							}
							%>
							<td id="scheduleObject"><%= tokens[0] %></td>
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
			<button type="button" id="saveButton" class="btn-large waves-effect waves-light red darken-3">Save</button>
			<button type="button" id="regenerateButton" class="btn-large waves-effect waves-light red darken-3" onclick="refresh()">Generate another SChedule</button>
		</div>
	</body>
</html>