package backend;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ThreadLocalRandom;

public class ScheduleGenerator {
	private ArrayList<ArrayList<ArrayList<Course>>> schedules = new ArrayList<ArrayList<ArrayList<Course>>>();
	private ArrayList<Course> toGraduate;
	private ArrayList<Course> coursesTaken;
	private int semesters;
	private int counter = 1;
	private Boolean stop = false;
	
	public ScheduleGenerator(ArrayList<Course> toGraduateUnsorted, int semesters, ArrayList<Course> coursesTaken) {
		this.semesters = semesters;
		this.toGraduate = toGraduateUnsorted;
		this.coursesTaken = coursesTaken;
	}
	
	public void removeCompleted() {
		for(Course c : coursesTaken) {
			for(Course c2 : toGraduate) {
				if(c2.getPrereqs().contains(c)) {
					c2.setCourseCount(c2.getCourseCount()-1);
				}
			}
		}
	}
	public void topSort() {
		System.out.println("Start of TopSort");
		ArrayList<Course> toGraduateSorted = new ArrayList<Course>();
		ArrayList<Course> ge = new ArrayList<Course>();
		// remove GEs
		for(Course c : toGraduate) {
			if(c.getPrefix().contains("GE")) {
				ge.add(c);
			}
		}
		for(Course c : ge) {
			toGraduate.remove(c);
		}
		LinkedList<Course> noPrereqs = new LinkedList<Course>();
		Course curr = null;
		while(!toGraduate.isEmpty()) {
			for(Course c : toGraduate) {
				if(c.getCourseCount() == 0) {
					noPrereqs.add(c);
				}
			}
			while(!noPrereqs.isEmpty()) {
				curr = noPrereqs.poll();
				for(Course c : toGraduate) {
					if(c.getPrereqs().contains(curr)) {
						c.setCourseCount(c.getCourseCount() - 1);
					}
				}
				toGraduateSorted.add(curr);
				toGraduate.remove(curr);
				noPrereqs.remove(curr);
			}
		}
		//add GEs randomly
		Integer randomNum = null;
		for(Course c : ge) {
			randomNum = ThreadLocalRandom.current().nextInt(0, toGraduateSorted.size());
			toGraduateSorted.add(randomNum, c);
		}
		this.toGraduate = toGraduateSorted;
		for(Course c : toGraduateSorted) {
			System.out.println(c.getPrefix() + " " + c.getNum());
		}
	}
	
	public void printSchedule(ArrayList<ArrayList<Course>> schedule) {
		for(int i=0; i<schedule.size(); ++i) {
			for(int j=0; j<schedule.get(i).size(); ++j) {
				int semNum = i + 1;
				System.out.println("Semester " + semNum + " Course: " + schedule.get(i).get(j).getPrefix() + " "
						+ schedule.get(i).get(j).getNum());
			}
		}
	}
	
	public void printAllSchedules() {
		for(int i=0; i<schedules.size(); ++i) {
			System.out.println("Schedule: " + i);
			printSchedule(schedules.get(i));
		}
	}
	public void generateAll(ArrayList<Course> toGraduateSorted, ArrayList<ArrayList<Course>> schedule) throws Exception {
		// if we've already generated enough schedules, stop all instances
		if(stop) return;
		else if(toGraduateSorted.isEmpty()) {
			//System.out.println("Schedule " + counter);
			schedules.add(schedule);
			counter++;
			if(counter > 4) {
				stop = true;
				printAllSchedules();
				throw new Exception();
			}
			return;
		}
		for(int i=0; i<semesters; ++i) {
			Course currCourse = toGraduateSorted.get(0);
			schedule.get(i).add(currCourse);
			if(validSchedule(schedule)) {
				toGraduateSorted.remove(0);
				generateAll(toGraduateSorted, schedule);
				toGraduateSorted.add(0, currCourse);
			}
			
			schedule.get(i).remove(currCourse);
		}
		return;
	}
	
	public Boolean completedPrereq(ArrayList<ArrayList<Course>> schedule, int semesterNum, Course prereq) {
		for(int i=0; i<semesterNum; ++i) {
			ArrayList<Course> currSemester = schedule.get(i);
			if(currSemester.contains(prereq)) {
				return true;
			}
		}
		return false;
	}
	public Boolean validSchedule(ArrayList<ArrayList<Course>> schedule) {
		for(int i=0; i<schedule.size(); ++i) {
			int unitTotal = 0;
			ArrayList<Course> currSemester = schedule.get(i);
			for(int j=0; j<currSemester.size(); ++j) {
				Course currCourse = currSemester.get(j);
				unitTotal += currCourse.getUnits();
				for(int k=0; k<currCourse.getPrereqs().size(); ++k) {
					Course currPrereq = currCourse.getPrereqs().get(k);
					if(!completedPrereq(schedule, i, currPrereq)) {
						return false;
					}
				}
			}
			if(unitTotal > 18) {
				return false;
			}
		}
		return true;
	}
	
//	public static void main(String [] args) {
//		Course cs103 = new Course("CSCI", "103", 4);
//		Course cs109 = new Course("CSCI", "109", 2);
//		Course cs170 = new Course("CSCI", "170", 4);
//		Course cs104 = new Course("CSCI", "104", 4);
//		Course cs270 = new Course("CSCI", "270", 4);
//		Course cs201 = new Course("CSCI", "201", 4);
//		Course cs310 = new Course("CSCI", "310", 4);
//		Course cs360 = new Course("CSCI", "360", 4);
//		Course cs356 = new Course("CSCI", "356", 4);
//		Course math125 = new Course("MATH", "125", 4);
//		Course math126 = new Course("MATH", "126", 4);
//		Course math225 = new Course("MATH", "225", 4);
//		Course ee109 = new Course("EE", "109", 4);
//		Course geA = new Course("GE", "A", 4);
//		Course geB = new Course("GE", "B", 4);
//		Course geC = new Course("GE", "C", 4);
//		Course geD = new Course("GE", "D", 4);
//		Course geE = new Course("GE", "E", 4);
//		Course geF = new Course("GE", "F", 4);
//		Course cs401 = new Course("CSCI", "401", 4);
//
//		cs170.getPrereqs().add(cs103);
//		cs170.getPrereqs().add(cs109);
//		cs104.getPrereqs().add(cs103);
//		cs201.getPrereqs().add(cs104);
//		cs270.getPrereqs().add(cs170);
//		cs270.getPrereqs().add(cs104);
//		cs310.getPrereqs().add(cs201);
//		cs360.getPrereqs().add(cs356);
//		cs356.getPrereqs().add(cs104);
//		math126.getPrereqs().add(math125);
//		math225.getPrereqs().add(math126);
//		cs401.getPrereqs().add(cs270);
//		cs401.getPrereqs().add(cs310);
//		
//		ArrayList<Course> toGraduate = new ArrayList<Course>();
//		toGraduate.add(math225);
//		toGraduate.add(cs310);
//		toGraduate.add(cs104);
//		toGraduate.add(cs103);
//		toGraduate.add(cs201);
//		toGraduate.add(math125);
//		toGraduate.add(cs109);
//		toGraduate.add(cs270);
//		toGraduate.add(cs170);
//		toGraduate.add(math126);
//		toGraduate.add(ee109);
//		toGraduate.add(cs360);
//		toGraduate.add(cs356);
//		toGraduate.add(geA);
//		toGraduate.add(geB);
//		toGraduate.add(geC);
//		toGraduate.add(geD);
//		toGraduate.add(geE);
//		toGraduate.add(geF);
//		toGraduate.add(cs401);
//		
//		ScheduleGenerator sg = new ScheduleGenerator(toGraduate, 8, null);
//		sg.topSort();
//
//		ArrayList<ArrayList<Course>> schedule = new ArrayList<ArrayList<Course>>();
//		for(int i=0; i<sg.getSemesters(); ++i) {
//			ArrayList<Course> temp = new ArrayList<Course>();
//			schedule.add(temp);
//		}
//		ArrayList<Course> toGraduateSorted = sg.getToGraduate();
//		
//		// results are stored in schedules data member
//		sg.generateAll(toGraduateSorted, schedule);
//	}

	public ArrayList<ArrayList<ArrayList<Course>>> getSchedules() {
		return schedules;
	}

	public void setSchedules(ArrayList<ArrayList<ArrayList<Course>>> schedules) {
		this.schedules = schedules;
	}

	public ArrayList<Course> getToGraduate() {
		return toGraduate;
	}

	public void setToGraduate(ArrayList<Course> toGraduate) {
		this.toGraduate = toGraduate;
	}

	public int getSemesters() {
		return semesters;
	}

	public void setSemesters(int semesters) {
		this.semesters = semesters;
	}

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

	public Boolean getStop() {
		return stop;
	}

	public void setStop(Boolean stop) {
		this.stop = stop;
	}
}
