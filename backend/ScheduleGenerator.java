import java.util.ArrayList;
import java.util.LinkedList;

public class ScheduleGenerator {
	
	// http://www.geeksforgeeks.org/word-break-problem-using-backtracking/
	// http://www.geeksforgeeks.org/window-sliding-technique/
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
	
//	public ArrayList<ArrayList<Course>> generate(int semesters) {
//		ArrayList<ArrayList<Course>> schedule = new ArrayList<ArrayList<Course>>();
//		for(int i=0; i<semesters; ++i) {
//			ArrayList<Course> currSemester = new ArrayList<Course>();
//			int unitSum = 0;
//		}
//		
//	}
	
	
	public static void main(String [] args) {
		ScheduleGenerator sg = new ScheduleGenerator();
		Course cs103 = new Course("cs103");
		Course cs109 = new Course("cs109");
		Course cs170 = new Course("cs170");
		Course cs104 = new Course("cs104");
		Course cs270 = new Course("cs270");
		Course cs201 = new Course("cs201");
		Course cs310 = new Course("cs310");
		Course cs360 = new Course("cs360");
		Course cs356 = new Course("cs356");
		Course math125 = new Course("math125");
		Course math126 = new Course("math126");
		Course math225 = new Course("math225");
		Course ee109 = new Course("ee109");

		cs170.getPrereqs().add(cs103);
		cs170.getPrereqs().add(cs109);
		cs104.getPrereqs().add(cs103);
		cs201.getPrereqs().add(cs104);
		cs270.getPrereqs().add(cs170);
		cs270.getPrereqs().add(cs104);
		cs310.getPrereqs().add(cs201);
		cs360.getPrereqs().add(cs356);
		cs356.getPrereqs().add(cs104);
		math126.getPrereqs().add(math125);
		math225.getPrereqs().add(math126);
		
		ArrayList<Course> toGraduate = new ArrayList<Course>();
		toGraduate.add(math225);
		toGraduate.add(cs310);
		toGraduate.add(cs104);
		toGraduate.add(cs103);
		toGraduate.add(cs201);
		toGraduate.add(math125);
		toGraduate.add(cs109);
		toGraduate.add(cs270);
		toGraduate.add(cs170);
		toGraduate.add(math126);
		toGraduate.add(ee109);
		toGraduate.add(cs360);
		toGraduate.add(cs356);
		ArrayList<Course> toGraduateSorted = sg.topSort(toGraduate);
		for(Course c : toGraduateSorted) {
			System.out.println(c.getName());
		}
	}
}
