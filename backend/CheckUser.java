package backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckUser")
public class CheckUser extends HttpServlet {
	public static final long serialVersionUID = 1;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		System.out.println(email);
		System.out.println(pw);
	    Connection conn = null;
	    Statement st = null;
	    ResultSet rs = null;
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=root&useSSL=false");
	        st = conn.createStatement();
	        	rs = st.executeQuery("SELECT * from Student where email='" + email + "'");
	        	if (rs.next()) {
	        		String passwordMatch = null;
	        		passwordMatch = rs.getString("password");
	        		System.out.println(passwordMatch);
	        		if(passwordMatch != null) {
	        			if (passwordMatch.equals(pw)) {
		        			//Successful match
		        			request.setAttribute("userEmail", email);
		        			//response.sendRedirect("input.jsp");
		        			response.sendRedirect("input.jsp");
		        		}
		        		else {
		        			request.setAttribute("errorMessage", "<font color=\"white\">Invalid password or username</font><br />");
			        		getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		        		//wrong password
		        		}
	        		}
	        	}
	        	else {
	        		//No email in database
	        		request.setAttribute("errorMessage", "<font color=\"white\">Invalid password or username</font><br />");
	        		getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	        	}
	    } catch (SQLException sqle) {
	    	System.out.println (sqle.getMessage());
	    } catch (ClassNotFoundException cnfe) {
	    	System.out.println (cnfe.getMessage());
	    } finally {
	    	try {
	    		if (rs != null) {
	    			rs.close();
	    		}
	    		if (st != null) {
	    			st.close();
	    		}
	    		if (conn != null) {
	    			conn.close();
	    		}
	    	} catch (SQLException sqle) {
	    		System.out.println(sqle.getMessage());
	    	}
	    }  

	    //String nextJSP = "/displayStudent.jsp";
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		//dispatcher.forward(request,response);
	}
}


