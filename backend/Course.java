import java.util.ArrayList;

public class Course {
	private ArrayList<Course> prereqs = new ArrayList<Course>();
	private ArrayList<Course> dependencies = new ArrayList<Course>();
	private String name;
	public Course(String name) {
		this.name = name;
	}
	public ArrayList<Course> getPrereqs() {
		return prereqs;
	}
	public void setPreqs(ArrayList<Course> prereqs) {
		this.prereqs = prereqs;
	}
	public ArrayList<Course> getDependencies() {
		return dependencies;
	}
	public void setDependencies(ArrayList<Course> dependencies) {
		this.dependencies = dependencies;
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
}
