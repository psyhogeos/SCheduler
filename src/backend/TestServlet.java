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
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Statement st = null;
		// Major name
		String majorname = request.getParameter("major");
		// Remove all spaces from the major name
		majorname = majorname.replaceAll("\\s+", "");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=j00nhakim&useSSL=false");
			st = conn.createStatement();
			System.out.println(majorname);
			rs = st.executeQuery("SELECT * from " + majorname);
			ArrayList<Course> courses = new ArrayList<Course>();
			while (rs.next()) {
				Integer courseID = rs.getInt(majorname + "CourseID");
				System.out.println("#1:" + courseID);
				ResultSet rp = st.executeQuery("SELECT * from Course where courseID = " + courseID);
				System.out.println("#2:" + courseID);
				String coursePrefix = rp.getString("coursePrefix");
				String courseNumber = rp.getString("courseNum");
				Integer units = rp.getInt("courseUnits");
				Course c = new Course(coursePrefix, courseNumber, units, courseID);
				ResultSet rt = st.executeQuery("SELECT * from Prereq where courseID = " + courseID);
				while ( rt.next()) {
					Integer prereqID = rt.getInt("GetCourseID");
					ResultSet rz = st.executeQuery("SELECT * from Course where courseID = " + prereqID);
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
