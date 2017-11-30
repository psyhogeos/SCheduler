package backend;
import java.io.Serializable;
import java.util.ArrayList;

public class Course implements Serializable {
	private static final long serialVersionUID = 1L;
	private ArrayList<Course> prereqs = new ArrayList<Course>();
	private String prefix;
	private String num;
	private int units;
	private int courseCount = 0;
	private int courseID;
	
	public Course(String prefix, String num, int units) {
		this.prefix = prefix;
		this.num = num;
		this.units = units;
	}
	public Course(String prefix, String num, int units, int courseID) {
		this.prefix = prefix;
		this.num = num;
		this.units = units;
		this.courseID = courseID;
	}
	public ArrayList<Course> getPrereqs() {
		return prereqs;
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
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
}
