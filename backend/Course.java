import java.util.ArrayList;

public class Course {
	private ArrayList<Course> prereqs = new ArrayList<Course>();
	private String prefix;
	private String num;
	private int units;
	public Course(String prefix, String num, int units) {
		this.prefix = prefix;
		this.num = num;
		this.units = units;
	}
	public ArrayList<Course> getPrereqs() {
		return prereqs;
	}
	public void setPreqs(ArrayList<Course> prereqs) {
		this.prereqs = prereqs;
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
	public void setPrereqs(ArrayList<Course> prereqs) {
		this.prereqs = prereqs;
	}
	public int getUnits() {
		return units;
	}
	public void setUnits(int units) {
		this.units = units;
	}
}
