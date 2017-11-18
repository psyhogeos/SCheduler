

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

/**
 * Servlet implementation class FindMyStudent
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/finalproject?user=root&password=root&useSSL=false");
			st = conn.createStatement();
			if (email != null && email.length() > 0) { 
				rs = st.executeQuery("SELECT * FROM student WHERE email='" + email + "'");
			}
			else {
//				rs = st.executeQuery("SELECT * FROM Student");
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
			}
			
			if (rs.next()) {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/input.jsp");
				dispatcher.forward(request, response);
			}
			else {
				String errorMsg = "Account with specified email does not exist.";
				request.setAttribute("errorMsg", errorMsg);
//				st.executeQuery("INSERT INTO student (email, password) VALUES ('" + email + "', '" + pw + "');");
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
				dispatcher.forward(request, response);
			}
		}
		catch(SQLException sqle) {
			System.out.println("sqle: " + sqle.getMessage());
		}
		catch(ClassNotFoundException cnfe) {
			System.out.println("cnfe: " + cnfe.getMessage());
		}
		finally {
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
			}
			catch(SQLException sqle) {
				System.out.println("sqle closing stuff: " + sqle.getMessage());
			}
		}
	}

}
