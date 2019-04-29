package AdminFunctionalities;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import CMCDatabase.DBController;
import UniversityFunctionalities.University;
import UniversityFunctionalities.UniversityController;

/**
 * 
 * @authorCtrlAltElite
 * 
 */

public class AdminInteraction {

	// instance variable
	private AdminFunctionalityController adminFController;
	private DBController dbController;
	private UniversityController uc;

	// constructor
	public AdminInteraction() {
		adminFController = new AdminFunctionalityController();
		dbController = new DBController();
		uc = new UniversityController();
	}

	public void addToSavedSchoolsList4() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter username to add a school to their saved school list");
		String username = sc.nextLine();
		System.out.println("Enter school to add to " + username + "'s saved school list.");
		String schoolName = sc.nextLine();
		sc.close();
		adminFController.addToSavedSchoolsList3(username, schoolName);
	}

	/**
	 * Adds a new university to the database by calling addUniversity() in
	 * AdminFunctionalityController
	 */
	// public boolean addUniversity() {
	// //adminFController.addUniversity();
	// DBController dbc = new DBController();
	//
	// List<String> emphases = new ArrayList<String>();
	//
	// Scanner sc = new Scanner(System.in);
	// System.out.println("Enter school name to be added or 'q' to quit");
	// String schoolName = sc.nextLine();
	//
	// boolean success = false;
	//
	// int i = 0;
	// // searches through list of universities retrieved through loadUniversities()
	// while (i < dbc.loadUniversities().size()) {
	//
	// String name = dbc.loadUniversities().get(i).getSchoolName();
	//
	// // confirms that the uniToFind exists
	// if (name.toUpperCase().equals(schoolName.toUpperCase())) {
	// // e= true;
	// System.out.println(schoolName + " exists, choose a different name.");
	// sc.close();
	//
	// addUniversity();
	//
	// }
	//
	// else if(schoolName.equals("q")) {
	// sc.close();
	// break;
	// }
	//
	// else {
	//
	// System.out.println("Enter School State: \n");
	// String schoolState = sc.nextLine();
	// System.out.println("Enter School Location: \n");
	// String schoolLocation = sc.nextLine();
	// System.out.println("Enter School Control: \n");
	// String schoolControl = sc.nextLine();
	// System.out.println("Enter Number of Students: \n");
	// int numberStudents = sc.nextInt();
	// System.out.println("Enter Percent Female Students: \n");
	// int percentFemale = sc.nextInt();
	// System.out.println("Enter Average Verbal SAT Score: \n");
	// int verbalSAT = sc.nextInt();
	// System.out.println("Enter Average Math SAT Score: \n");
	// int mathSAT = sc.nextInt();
	// System.out.println("Enter School Cost: \n");
	// int schoolExpenses = sc.nextInt();
	// System.out.println("Enter Percent of Students Receiving Financial Aid: \n");
	// int percentFinancialAid = sc.nextInt();
	// System.out.println("Enter Number of Applicants: \n");
	// int numApplicants = sc.nextInt();
	// System.out.println("Enter Percent of Students Admitted: \n");
	// int percentAdmitted = sc.nextInt();
	// System.out.println("Enter Percent of Students Enrolled: \n");
	// int percentEnrolled = sc.nextInt();
	// System.out.println("Enter Academic Scale Rating (1-5): \n");
	// int academicScale = sc.nextInt();
	// System.out.println("Enter Social Scale Rating (1-5): \n");
	// int socialScale = sc.nextInt();
	// System.out.println("Enter Quality Scale Rating (1-5): \n");
	// int qualityScale = sc.nextInt();
	// sc.nextLine();
	// // System.out.println("Enter 5 Emphases, type 'q' anytime to quit: \n");
	// String emphasis = sc.nextLine();
	// while(!emphasis.equals("q")) {
	// emphases.add(emphasis);
	// emphasis = sc.nextLine();
	// }
	// sc.close();
	//
	// adminFController.addUniversity(schoolName, schoolState, schoolLocation,
	// schoolControl, numberStudents,
	// percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid,
	// numApplicants,
	// percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale,
	// emphases);
	// success = true;
	// break;
	// }
	// }
	// return success;
	// }

	/**
	 * Adds a new university to the database by calling addUniversity() in
	 * AdminFunctionalityController
	 */
	public boolean addUniversity1(String schoolName, String schoolState, String schoolLocation, String schoolControl,
			int numberStudents, int percentFemale, int verbalSAT, int mathSAT, int schoolExpenses,
			int percentFinancialAid, int numApplicants, int percentAdmitted, int percentEnrolled, int academicScale,
			int socialScale, int qualityScale, String emphasis1, String emphasis2, String emphasis3, String emphasis4,
			String emphasis5) {
		System.out.println("here");

		DBController dbc = new DBController();

		boolean success = false;
		int x = 0;
		int uniSize = dbc.loadUniversities().size();
		int i = 0;
		
		for(int j = 0; i < schoolName.length(); j++) {	//checks for number in name
			if(Character.isDigit(schoolName.charAt(j))){
				System.out.println(schoolName + " contains a number and is not accepted.");
				break;
			}
		}
		
		String schoolName2 = schoolName.toUpperCase();

		// searches through list of universities retrieved through loadUniversities()
		while (i < dbc.loadUniversities().size()) {
			System.out.println(i);

			String name = dbc.loadUniversities().get(i).getSchoolName().toUpperCase();

			// confirms that the uniToFind exists
			if (name.equals(schoolName2)) {
				// e= true;
				System.out.println(schoolName + " exists, choose a different name.");
				break;

				// addUniversity();
			}

			if (i == uniSize - 1) {
				x = 1;
			}
			i++;

		}

		if (x == 1) {

			if (schoolState == null) {
				schoolState = "-1";
			}

			if (schoolLocation == null) {
				schoolLocation = "-1";
			}

			if (schoolControl == null) {
				schoolControl = "-1";
			}

			if (numberStudents == 0) {
				numberStudents = -1;
			}

			if (percentFemale == 0) {
				percentFemale = -1;
			}

			if (verbalSAT == 0) {
				verbalSAT = -1;
			}

			if (mathSAT == 0) {
				mathSAT = -1;
			}

			if (schoolExpenses == 0) {
				schoolExpenses = -1;
			}

			if (percentFinancialAid == 0) {
				percentFinancialAid = -1;
			}

			if (numApplicants == 0) {
				numApplicants = -1;
			}

			if (percentAdmitted == 0) {
				percentAdmitted = -1;
			}

			if (percentEnrolled == 0) {
				percentEnrolled = -1;
			}

			if (academicScale == 0) {
				academicScale = -1;
			}

			if (socialScale == 0) {
				socialScale = -1;
			}

			if (qualityScale == 0) {
				qualityScale = -1;
			}

			List<String> emphasesList = new ArrayList<String>();

			if (emphasis1 != null) {
				emphasesList.add(emphasis1);
			}

			if (emphasis2 != null && emphasis2 != emphasis1) {
				emphasesList.add(emphasis2);
			}

			if (emphasis3 != null && emphasis3 != emphasis1 && emphasis3 != emphasis2) {
				emphasesList.add(emphasis3);
			}

			if (emphasis4 != null && emphasis4 != emphasis1 && emphasis4 != emphasis2 && emphasis4 != emphasis3) {
				emphasesList.add(emphasis4);
			}

			if (emphasis5 != null && emphasis5 != emphasis1 && emphasis5 != emphasis2 && emphasis5 != emphasis3
					&& emphasis5 != emphasis4) {
				emphasesList.add(emphasis5);
			}

			adminFController.addUniversity(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
					percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
					percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphasesList);
			success = true;

		}
		System.out.println("here2");

		return success;
	}


	/**
	 * Removes a stored university from the database by calling
	 * removeUniversityDB(String) in AdminFunctionalityController
	 * 
	 * @param schoolName
	 */
	public void removeUniversityDB(String schoolName) {
		adminFController.removeUniversityDB(schoolName);
	}

	// /**
	// * Updates the status of users in database
	// * @param status
	// */
	// public void updateStatus(String status) {
	// //TODO
	// }
	//
	// /**
	// * Updates type of user in database
	// * @param Type
	// */
	// public void updateType(String Type) {
	// //TODO
	// }

	/**
	 * Adds a new user to the database by calling addUser() in
	 * AdminFunctionalityController
	 */
	public void addUser(String firstName, String lastName, String username, String password, String type) {
		char typeToPass = type.charAt(0);
		adminFController.addUser(firstName, lastName, username, password, typeToPass);
	}

	public boolean editUniversity(String name, String editstate, String editlocation, String editcontrol,
			String editnumberOfStudents, String editpercentFemales, String editSATVerbal, String editSATMath,
			String editexpenses, String editpercentFinancialAid, String editnumberOfApplicants,
			String editpercentAdmitted, String editpercentEnrolled, String editacademicsScale, String editsocialScale,
			String editqualityOfLifeScale, List<String> emphases) {
		return uc.editUniversity(name, editstate, editlocation, editcontrol,
				Integer.parseInt(editnumberOfStudents), Integer.parseInt(editpercentFemales),
				Integer.parseInt(editSATVerbal), Integer.parseInt(editSATMath), Integer.parseInt(editexpenses),
				Integer.parseInt(editpercentFinancialAid), Integer.parseInt(editnumberOfApplicants),
				Integer.parseInt(editpercentAdmitted), Integer.parseInt(editpercentEnrolled),
				Integer.parseInt(editacademicsScale), Integer.parseInt(editsocialScale),
				Integer.parseInt(editqualityOfLifeScale), emphases);
	}

	/**
	 * shows the admin the list of universities by calling viewUniversities() in the
	 * AdminFunctionalityController
	 */
	public void viewUniversities() {
		adminFController.viewUniversities();
	}

	/**
	 * Displays all users and their information in the database by calling
	 * viewUsers() in AdminFunctionalityController
	 */
	public void viewUsers() {
		adminFController.viewUsers();
	}
}
