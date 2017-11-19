<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- comment --%>

<%
	//comment
	String email = request.getParameter("email");
	String password = request.getParameter("pw");
	System.out.println("loginvalidate.jsp");
	
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
%>
