public class Athlete {

	static int nextBibNumber;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
	}

	public static void main(String[] args) {
		// create two athletes
		// print their names, bibNumbers, and the location of
		// their race.
		Athlete athlete1 = new Athlete("Athlete1", 1);
		Athlete athlete2 = new Athlete("Athlete2", 2);

		System.out.println(athlete1.name);
		System.out.println(athlete2.name);
		System.out.println(athlete1.bibNumber);
		System.out.println(athlete2.bibNumber);
		System.out.println(Athlete.raceLocation);
		System.out.println(Athlete.raceLocation);
		System.out.println(Athlete.raceStartTime);
		System.out.println(Athlete.raceStartTime);

	}
}
