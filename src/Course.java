import java.util.Vector;

public class Course {
	
	private int units;
	
	private String prefix;
	
	private String courseNumber;
	
	private Vector<Course> prereqs;
	
	public Course(int iUnits, String iPrefix, String iCourseNumber, Vector<Course> iPrereqs) {
		units = iUnits;
		prefix = iPrefix;
		courseNumber = iCourseNumber;
		iPrereqs = prereqs;
	}
	
	public void setPrereqs(Vector<Course> iPrereqs) {
		prereqs = iPrereqs;
	}
	
	public Vector<Course> getPrereqs() {
		return prereqs;
	}
	
	
	
	public void setUnits(int iUnits) {
		units = iUnits;
	}
	
	public void setPrefix(String iPrefix) {
		prefix = iPrefix;
	}
	
	public void setCourseNumber(String iCourseNumber) {
		courseNumber = iCourseNumber;
	}
	
	public int getUnits() {
		return units;
	}
	
	public String getPrefix() {
		return prefix;
	}
	
	public String getCourseNumber() {
		return courseNumber;
	}

}
