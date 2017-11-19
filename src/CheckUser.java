import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QueryStudent")
public class QueryStudent extends HttpServlet {
	public static final long serialVersionUID = 1;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	    Connection conn = null;
	    Statement st = null;
	    ResultSet rs = null;
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost/StudentGrades?user=root&password=root&useSSL=false");
	        st = conn.createStatement();
	        if (email.length() > 0 && pw.length() > 0) {
	        	rs = st.executeQuery("SELECT * from User where email='" + email + "'");
	        	if (rs != null) {
	        		passwordMatch = rs.getString("passwords");
	        		if (passwordMatch.equals(pw)) {
	        			//Succesful match
	        			request.setAttribute("userEmail", email);
	        		}
	        		else{
	        	
	        		//wrong password
	        		}
	        	}
	        	else {
	        		//No email in database

	        	}

	        }
	        else {

	        	// Username/password field was blank


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

	    
	    String nextJSP = "/displayStudent.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request,response);
	}
}




