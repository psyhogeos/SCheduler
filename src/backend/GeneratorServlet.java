package backend;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GeneratorServlet
 */
@WebServlet("/GeneratorServlet")
public class GeneratorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public GeneratorServlet() {
        super();
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false); 
		ArrayList<Course> courses = (ArrayList<Course>)request.getAttribute("allCourses");
		if (courses != null) {
			System.out.println("SERVLET SIZE: " + courses.size());
		} else {
			System.out.println("COURSES WAS NULL!");
		}
		String c[] = request.getParameterValues("coursesTaken");
		// Checks and makes sure values were grabbed
		if (c != null) {
			for (int i = c.length - 1; i >= 0; i--) {
				System.out.println(c[i]);
//				courses.remove(c[i]);
		 	}
		}
		
		System.out.println();
		System.out.println("COURSES TO TAKE: ");
		if (courses != null) {
			for (int i = 0; i < courses.size(); i++) {
				System.out.println(courses.get(i));
			}
		} else {
			System.out.println("COURSES WAS NULL!");
		}
		ScheduleGenerator sg = new ScheduleGenerator(null, 0);
	}

}
