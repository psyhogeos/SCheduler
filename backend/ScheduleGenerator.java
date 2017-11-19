import java.util.ArrayList;
import java.util.LinkedList;

public class ScheduleGenerator {
	
	public ArrayList<Course> topSort(ArrayList<Course> toGraduate) {
		ArrayList<Course> toGraduateSorted = new ArrayList<Course>();
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
				for(Course c : curr.getDependencies()) {
					c.getPrereqs().remove(curr);
				}
				toGraduateSorted.add(curr);
				toGraduate.remove(curr);
				noPrereqs.remove(curr);
			}
		}
		return toGraduateSorted;
	}
	
	public CoursePlan generateCoursePlan(ArrayList<Course> toGraduate) {
		CoursePlan generatedCoursePlan = new CoursePlan();
		Semester currentSemester = new Semester();
		
	}
	
	public static void main(String [] args) {
		ScheduleGenerator sg = new ScheduleGenerator();
		Course cs103 = new Course("cs103");
		Course cs109 = new Course("cs109");
		Course cs170 = new Course("cs170");
		Course cs104 = new Course("cs104");
		Course cs270 = new Course("cs270");
		Course cs201 = new Course("cs201");
		Course cs310 = new Course("cs310");
		
		cs103.getDependencies().add(cs104);
		cs103.getDependencies().add(cs170);
		cs109.getDependencies().add(cs170);
		cs170.getPrereqs().add(cs103);
		cs170.getPrereqs().add(cs109);
		cs170.getDependencies().add(cs270);
		cs104.getPrereqs().add(cs103);
		cs104.getDependencies().add(cs201);
		cs104.getDependencies().add(cs270);
		cs201.getPrereqs().add(cs104);
		cs201.getDependencies().add(cs310);
		cs270.getPrereqs().add(cs170);
		cs270.getPrereqs().add(cs104);
		cs310.getPrereqs().add(cs201);
		
		ArrayList<Course> toGraduate = new ArrayList<Course>();
		toGraduate.add(cs310);
		toGraduate.add(cs104);
		toGraduate.add(cs103);
		toGraduate.add(cs201);
		toGraduate.add(cs109);
		toGraduate.add(cs270);
		toGraduate.add(cs170);
		ArrayList<Course> toGraduateSorted = sg.topSort(toGraduate);
		for(Course c : toGraduateSorted) {
			System.out.println(c.getName());
		}
	}
}
