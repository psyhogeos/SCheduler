import java.util.LinkedList;
import java.util.Vector;

public class User {

	private String fname;

	private String lname;

	private int semestersLeft;

	private String majorPrefix;

	private Vector<Course> coursesTaken;

	private Vector<Course> coursesLeft;

	public User(String iFname, String iLname, int iSemestersLeft, String iMajor, Vector<Course> iCoursesTaken) {

		fname = iFname;
		lname = iLname;
		semestersLeft = iSemestersLeft;
		majorPrefix = iMajor;
		coursesTaken = iCoursesTaken;

		coursesLeft = new Vector<Course>();

	}

	public void setSemestersLeft(int iSemestersLeft) {
		semestersLeft = iSemestersLeft;
	}

	public void update(Vector<Course> newCoursesTaken) {
		for (int i = 0; i < newCoursesTaken.size(); i++) {

			Course currCourse = newCoursesTaken.get(i);

			coursesTaken.add(currCourse);

			for (int j = 0; j < coursesLeft.size(); j++) {
				if (currCourse.getPrefix().equals(coursesLeft.get(j).getPrefix()) &&
						currCourse.getCourseNumber().equals(coursesLeft.get(j).getCourseNumber())) {
					coursesLeft.remove(j);
				}
			}
		}


	}
	
	
	
	
	public Vector<Course> topSort(Vector<Course> toGraduate) {
		Vector<Course> toGraduateSorted = new Vector<Course>();
		LinkedList<Course> noPrereqs = new LinkedList<Course>();
		Course curr = null;
		while(!toGraduate.isEmpty()) {
			for(Course c : toGraduate) {
				if(c.getPrereqs().isEmpty()) {
					noPrereqs.add(c);
				}
			}
			while(!noPrereqs.isEmpty()) {
				curr = noPrereqs.poll();
				for(Course c : toGraduate) {
					if(c.getPrereqs().contains(curr)) {
						c.getPrereqs().remove(curr);
					}
				}
				toGraduateSorted.add(curr);
				toGraduate.remove(curr);
				noPrereqs.remove(curr);
			}
		}
		return toGraduateSorted;


	}

}



