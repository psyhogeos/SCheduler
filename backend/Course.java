import java.util.ArrayList;

public class Course {
	private ArrayList<Course> prereqs = new ArrayList<Course>();
	private String name;
	private int units;
	private int courseCount = 0;
	public Course(String name, int units) {
		this.name = name;
		this.units = units;
	}
	public ArrayList<Course> getPrereqs() {
		return prereqs;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPrereqs(ArrayList<Course> prereqs) {
		this.prereqs = prereqs;
	}
	public int getCourseCount() {
		return courseCount;
	}
	public void setCourseCount(int courseCount) {
		this.courseCount = courseCount;
	}
	public int getUnits() {
		return units;
	}
	public void setUnits(int units) {
		this.units = units;
	}
}
