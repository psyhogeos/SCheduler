<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="login.css">
<title>Log In</title>
<script>
	function validate() {
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET", "loginvalidate.jsp?email=" + document.login.email.value +
				"&pw=" + document.login.pw.value, false);
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
  <div id="outercontainer">
    <h3 id="title">LOG IN</h3>
    <form name="login" method="POST" action="CheckUser" onsubmit="return validate();">
      <div class="form-row">
        <label>Email: </label> <input type="text" name="email" />
      </div>
      <div class="form-row">
        <label>Password:</label> <input type="password" name="pw" />
      </div>
      <div id="formerror">
      <%if(request.getAttribute("errorMessage") != null) { %>
      	<%=request.getAttribute("errorMessage")%>
      <%} %>
      </div>
      <div class="form-row" style="text-align:center;">
        <button id="acct_button">Submit</button>
      </div>
    </form>
    <h4 id="register">New user? Register <a href="register.html" >here</a>.</h4> 
  </div>
  
  <div id="guest">
  	<a href="input.jsp"><h4>Use as Guest</h4></a>
  </div>
</body>

</html>