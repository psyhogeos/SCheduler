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
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Statement st = null;
		String majorname = request.getParameter("major");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost/StudentGrades?user=root&password=root&useSSL=false");
			st = conn.createStatement();
			rs = st.executeQuery("SELECT * from " + majorname);
			ArrayList<String> coursePrefix = new ArrayList<String>();
			ArrayList<String> courseNum = new ArrayList<String>();
			ArrayList<Integer> courseUnits = new ArrayList<Integer>();
			ArrayList<String> prereq = new ArrayList<String>();

			while (rs.next()) {
				Integer courseID = rs.getInt("GetCourseID");
				ResultSet rp = st.executeQuery("SELECT * from Course where courseID = " + courseID);
				String courseprefix = rp.getString("coursePrefix");
				String courseNumber = rp.getString("courseNum");
				Integer units = rp.getInt("courseUnits");
				coursePrefix.add(courseprefix);
				courseNum.add(courseNumber);
				courseUnits.add(units);
				ResultSet rt = st.executeQuery("SELECT * from Prereq where courseID = " + courseID);
				while ( rt.next())
				{
				Integer prereqID = rt.getInt("GetCourseID");
				ResultSet rz = st.executeQuery("SELECT * from Course where courseID = " + prereqID);
				
				}
				
			}
			ArrayList<Course> courses = new ArrayList<Course>();
			request.setAttribute("courses", courses);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/input.jsp");
			dispatcher.forward(request, response);
			//CoursesToTake cou = new CoursesToTake(coursePrefix, courseNum , courseUnits);
			// request.setAttribute("GetCources" , CoursesToTake);
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if(rs != null)
				{
					rs.close();
				}
				if(st!=null)
				{
					st.close();
				}
				if(conn!=null)
				{
					conn.close();
				}
			}
			catch(SQLException sqle)
			{
				System.out.println(sqle.getMessage());
			}
			String nextJSP = " ";
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/checkbox.jsp");
			dispatch.forward(request,response);
		}

	}

}
