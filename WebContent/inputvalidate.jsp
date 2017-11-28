<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%
	System.out.println("Inside inputvalidate");
	//comment
	Set<String> majors = new HashSet<>(Arrays.asList("Aerospace Engineering",
			"Astronautical Engineering",
			"Biomedical Engineering",
			"Chemical Engineering",
			"Civil Engineering",
			"Computer Engineering Computer Science",
			"Computer Science", 
			"Computer Science Business Administration",
			"Computer Science Games",
			"Electrical Engineering",
			"Environmental Engineering",
			"Mechanical Engineering"));
	String major = request.getParameter("major");
	int semesters = Integer.parseInt(request.getParameter("semesters"));
	System.out.println("inputvalidate.jsp");
	
	if (major == null || major.length() == 0 || !majors.contains(major)) {
%>
		<font color="black">Please enter a valid Viterbi major.</font><br />
<%
	}
	if (semesters > 8 || semesters < 1) {
%>
		<font color="black">Please enter a number of semesters between 1 and 8.</font><br />
<%
	}
%>