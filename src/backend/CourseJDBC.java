package backend;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
 * Servlet implementation class FinalProjectJDBC
 */
@WebServlet("/CourseJDBC")
public class CourseJDBC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CourseJDBC() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Gets name of the major from input page
		String majorname = request.getParameter("major");
		// Removes spaces from the major name
		majorname.replaceAll("\\s", "");
		Connection conn = null;
		Statement st = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// Get connection
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=j00nhakim&useSSL=false");
			// Creates the statement
			st = conn.createStatement();
			// Initializes result set 
			rs = st.executeQuery("SELECT * from " + majorname);
			ArrayList<Course> courses = new ArrayList<Course>();
			while (rs.next()) {
				Integer courseID = rs.getInt(majorname + "CourseID");
				ResultSet rp = st.executeQuery("SELECT * from Course where courseID = " + courseID);
				String coursePrefix = rp.getString("coursePrefix");
				String courseNumber = rp.getString("courseNum");
				Integer units = rp.getInt("courseUnits");
				Course c = new Course(coursePrefix, courseNumber, units, courseID);
				courses.add(c);
			}
			for (Course c : courses) {
				ResultSet rp = st.executeQuery("SELECT * from Prereq where courseID = " + c.getCourseID());
				while (rp.next()) {
					int prereqID = rp.getInt("prereqID");
					for(Course c2 : courses) {
						if(c2.getCourseID() == prereqID) {
							ArrayList<Course> cBuffer = c.getPrereqs();
							cBuffer.add(c2);
							c.setPrereqs(cBuffer);
						}
					}
				}
			}
			request.setAttribute("courses", courses);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/checkbox.jsp");
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(st!=null) {
					st.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}
			catch(SQLException sqle) {
				System.out.println(sqle.getMessage());
			}
			String nextJSP = " ";
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/checkbox.jsp");
			dispatch.forward(request,response);
		}

	}

}
