package backend;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
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
		majorname = majorname.replaceAll("\\s", "");
		Connection connectionOne = null;
		Connection connectionTwo = null;
		Connection connectionThree = null;
		Statement stOne = null;
		Statement stTwo = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// Get connection
			connectionOne = DriverManager
					.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=j00nhakim&useSSL=false");
			connectionTwo = DriverManager
					.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=j00nhakim&useSSL=false");
			connectionThree = DriverManager
					.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=j00nhakim&useSSL=false");
			// Creates the statement
			stOne = connectionOne.createStatement();
			// Initializes result set 
			System.out.println("#0:" + majorname);
			// rsOne is entire "major" table
			ResultSet rsOne = stOne.executeQuery("SELECT * from " + majorname);
			ArrayList<Course> courses = new ArrayList<Course>();
			while (rsOne.next()) {
				Integer courseID = rsOne.getInt(majorname + "CourseID");
				System.out.println("#1:" + courseID);
				stTwo = connectionTwo.createStatement();
				ResultSet rsTwo = stTwo.executeQuery("SELECT * from Course where courseID = " + courseID);
				System.out.println("#2:" + courseID);
				while (rsTwo.next()) {
					String coursePrefix = rsTwo.getString("coursePrefix");
					String courseNumber = rsTwo.getString("courseNum");
					Integer units = rsTwo.getInt("courseUnits");
					System.out.println("#3:" + coursePrefix + " " + courseNumber + " " + units);
					Course c = new Course(coursePrefix, courseNumber, units, courseID);
					courses.add(c);
				}
			}
			Statement stThree = connectionThree.createStatement();
			System.out.println("#3: HIIII");
			for (Course c : courses) {
				ResultSet rsThree = stThree.executeQuery("SELECT * from Prereq where courseID = " + c.getCourseID());
				while (rsThree.next()) {
					int prereqID = rsThree.getInt("prereqID");
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
//			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/checkbox.jsp");
//			dispatcher.forward(request, response);
//			return;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
//			try {
//				if(rs != null) {
//					rs.close();
//				}
//				if(st!=null) {
//					st.close();
//				}
//				if(connectionOne!=null) {
//					connectionOne.close();
//				}
//			}
//			catch(SQLException sqle) {
//				System.out.println(sqle.getMessage());
//			}
			String nextJSP = " ";
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/checkbox.jsp");
			dispatch.forward(request,response);
		}

	}

}