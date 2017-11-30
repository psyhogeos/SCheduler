package backend;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
		ArrayList<Course> courses = (ArrayList<Course>)session.getAttribute("allCourses");
		Integer semester = (Integer)session.getAttribute("session");
		System.out.println("SEMESTER: " + semester);
		if (courses != null) {
			System.out.println("SERVLET SIZE: " + courses.size());
		} else {
			System.out.println("COURSES WAS NULL!");
		}
		ArrayList<Course> coursesTaken = new ArrayList<Course>();
		String c[] = request.getParameterValues("coursesTaken");
		// Checks and makes sure values were grabbed
		if (c != null) {
			for (int i = c.length - 1; i >= 0; i--) {
				//System.out.println(c[i]);
				Integer loc = Integer.parseInt(c[i]);
				coursesTaken.add(courses.get(loc));
				courses.remove(loc);
		 	}
		}
		
		System.out.println("COURSE SIZE POST REMOVAL: " + courses.size());
		System.out.println("COURSES TO TAKE: ");
		for(int i=0; i<courses.size(); ++i) {
			courses.get(i).setCourseCount(courses.get(i).getPrereqs().size());
		}
		ScheduleGenerator sg = new ScheduleGenerator(courses, 8, coursesTaken);
		// assigns initial value of number of prereqs, which is used in 
		// top sort without actually removing courses from the prereq arraylist
		sg.removeCompleted();
		System.out.println("BEFORE TOPSORT");
		sg.topSort();
		System.out.println("TOPSORT");
		ArrayList<ArrayList<Course>> schedule = new ArrayList<ArrayList<Course>>();
		for(int i=0; i<sg.getSemesters(); ++i) {
			ArrayList<Course> temp = new ArrayList<Course>();
			schedule.add(temp);
		}
		ArrayList<Course> toGraduateSorted = sg.getToGraduate();
		
		// results are stored in schedules data member
		ArrayList<ArrayList<ArrayList<Course>>> schedules = null;
		try {
			sg.generateAll(toGraduateSorted, schedule);
		} catch (Exception e) {

		}
		schedules = sg.getSchedules();
		for(int i=0; i<schedules.size(); ++i) {
			for(int j=0; j<schedules.get(i).size(); ++j) {
				for(int k=0; k<schedules.get(i).get(j).size(); ++k) {
					Course course = schedules.get(i).get(j).get(k);
					System.out.println("Schedule " + i + " Semester " + j + " Course " + course.getPrefix() + " " 
							+ course.getNum());
				}
			}
		}
		request.setAttribute("schedules", schedules);
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/displayschedules.jsp");
		dispatch.forward(request,response);
	}

}