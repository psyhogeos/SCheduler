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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FinalProjectJDBC
 */
@WebServlet("/CourseJDBC")
public class CourseJDBC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CourseJDBC() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String semester = (String)request.getParameter("grad-date");
		Integer semesterInt = retrieveSemesterInt(semester);
		request.getSession().setAttribute("semester", semesterInt);
		// Gets name of the major from input page
		String majorname = request.getParameter("major");
		// Removes spaces from the major name
		majorname = majorname.replaceAll("\\s", "");
		Connection connectionOne = null;
		Connection connectionTwo = null;
		Connection connectionThree = null;
		Statement stOne = null;
		Statement stTwo = null;
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
			// rsOne is entire "major" table
			ResultSet rsOne = stOne.executeQuery("SELECT * from " + majorname);
			ArrayList<Course> courses = new ArrayList<Course>();
			while (rsOne.next()) {
				Integer courseID = rsOne.getInt(majorname + "CourseID");
				stTwo = connectionTwo.createStatement();
				ResultSet rsTwo = stTwo.executeQuery("SELECT * from Course where courseID = " + courseID);
				while (rsTwo.next()) {
					String coursePrefix = rsTwo.getString("coursePrefix");
					String courseNumber = rsTwo.getString("courseNum");
					Integer units = rsTwo.getInt("courseUnits");
					Course c = new Course(coursePrefix, courseNumber, units, courseID);
					courses.add(c);
				}
			}
			Statement stThree = connectionThree.createStatement();
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
		} catch (SQLException e) {
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			String nextJSP = " ";
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/checkbox.jsp");
			dispatch.forward(request,response);
		}

	}
	
	public Integer retrieveSemesterInt(String gradDate) {
		Integer semester = null;
		if(gradDate.equals("Spring 2018")) {
			semester = 1;
		}
		else if(gradDate.equals("Fall 2018")) {
			semester = 2;
		}
		else if(gradDate.equals("Spring 2019")) {
			semester = 3;
		}
		else if(gradDate.equals("Fall 2019")) {
			semester = 4;
		}
		else if(gradDate.equals("Spring 2020")) {
			semester = 5;
		}
		else if(gradDate.equals("Fall 2020")) {
			semester = 6;
		}
		else if(gradDate.equals("Spring 2021")) {
			semester = 7;
		}
		return semester;
	}
}