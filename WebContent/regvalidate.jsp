<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- comment --%>

<%
	//comment
	String email = request.getParameter("email");
	String password = request.getParameter("pw");
	String pw_confirm = request.getParameter("pw_confirm");
	
	
	if (email == null || email.length() == 0) {
%>
		<font color="white">Please enter an valid USC email address (@usc.edu).</font><br />
<%
	}
	else if (password == null || password.length() == 0) {
%>
		<font color="white">Please enter a password.</font><br />
<%
	}
	else if (pw_confirm == null || pw_confirm.length() == 0) {
%>
		<font color="white">Please confirm your password.</font><br />
<%
	}
	
	else if (!email.contains("@usc.edu")) {
%>
		<font color="white">Please enter a valid USC email address (@usc.edu).</font><br />
<%
	}
	else if (password.length() < 6) {
%>
		<font color="white">Password is too short.</font><br />
<%
	}
	else if (!password.equals(pw_confirm)) {
%>
		<font color="white">Confirmed password must match password.</font><br />
<%
	}
%>



