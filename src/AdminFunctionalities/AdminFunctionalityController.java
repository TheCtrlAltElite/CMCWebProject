package AdminFunctionalities;

//imports
import java.util.*;
import AccountFunctionalities.Account;
import CMCDatabase.*;
import UniversityFunctionalities.*;
import UserFunctionalities.*;

/**
 * @author CtrlAltElite
 */
public class AdminFunctionalityController {

	//instance variables
	private DBController database;
	private UniversityController uniController;
	private UserFunctionalityController ufc;
	
	//constructor
	public AdminFunctionalityController() {
		
	database = new DBController();
	uniController = new UniversityController();
	ufc = new UserFunctionalityController();
	}
	
	
	
	/**
	 * adds a university to a User's saves schools list
	 */
	public int addToSavedSchoolsList3(String username, String schoolName){
		
		DBController dbc = new DBController();
    	String userToFind = username;
    	int result = 0;
    	int i = 0;  	
    	
    	outerloop:
    	while(i<dbc.loadUsers().size()) {
    		String name = dbc.loadUsers().get(i).getEmail().toUpperCase();
   			
    		if (name.equals(userToFind.toUpperCase())){
   				result = 1;
  			
   				break outerloop;
    		}
    			
    		if(i == (dbc.loadUsers().size())-1) {

		   		result = 2;
		   		break outerloop;
    		}
   			i++;    			
   		}
	
   		if(result == 1) {
   			UniversityController unc = new UniversityController();
   			result = unc.addToSavedSchoolsList2(userToFind, schoolName); 				
    	}	
   		return result;
	}

	
	
	/**
	 * Adds a new university to the database.
	 * by calling addUniversityInfo() in UniversityController 
	 */
	public int addUniversity(String schoolName, String schoolState, String schoolLocation, String schoolControl, int numberStudents,
			int percentFemale, int verbalSAT, int mathSAT, int schoolExpenses, int percentFinancialAid, int numApplicants,
			int percentAdmitted, int percentEnrolled, int academicScale, int socialScale, int qualityScale, List<String> emphases) {
		
//		return uniController.addUniversityInfo(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
//				percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
//				percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphases);
		
		
		if(emphases== null){
			return uniController.addUniversityInfo(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
					percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
					percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, null);
		}
		
		else {
			return uniController.addUniversityInfo(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
					percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
					percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphases);
		}
	}
	
	
	/**
	 * Adds a new university to the database.
	 * by calling addUniversityInfo() in UniversityController 
	 */
	public int editUniversity(String schoolName, String schoolState, String schoolLocation, String schoolControl, int numberStudents,
			int percentFemale, int verbalSAT, int mathSAT, int schoolExpenses, int percentFinancialAid, int numApplicants,
			int percentAdmitted, int percentEnrolled, int academicScale, int socialScale, int qualityScale, List<String> emphases) {
		
//		return uniController.addUniversityInfo(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
//				percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
//				percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphases);
		
		
		if(emphases== null){
			return uniController.editUniversity(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
					percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
					percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, null);
		}
		
		else {
			return uniController.editUniversity(schoolName, schoolState, schoolLocation, schoolControl, numberStudents,
					percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants,
					percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphases);
		}
	}


	
	/**
	 * Adds a user to the database
	 * by getting the information from the user
	 */
	public int addUser(String firstName, String lastName, String username, String password, char type) {
		
		DBController dbc = new DBController();
		List<Account> users = dbc.loadUsers();

		int result = 0;
		//boolean added = false;
		//this.database.checkPasswordRequirements(password);
		
		if((this.database.checkPasswordRequirements(password)== false)) {
			result = 1;
			return result;
			//return added;
		}
		
		for (int i = 0; i < users.size(); i ++) {
			
			if(username.toUpperCase().equals(users.get(i).getEmail().toUpperCase()) ) {
				result = 2;
				break;
			}
		
			
			else {
				dbc.addUser(firstName, lastName, username, password, type);
				result = 3;
			}
		}	
		if(result != 3) {
			System.out.println("This username is taken or password does not meet requirements.\n ");
		}
		else {
			System.out.println("User was added. \n");

		}
		return result;
	}
	
	
	
	/**
	 * Removes university from the database
	 * by making sure the University is not in the 
	 * saved schools list of any users
	 * then calls removeUniversity() in DBController
	 */
	public int removeUniversityDB(String schoolName) {		
		int j = 0;  		
		int result = 0;
		String uniName = schoolName.toUpperCase();
		
		//searches through list of universities retrieved through loadUniversities() method
		while(j<database.loadUniversities().size()) {
			
			String name = database.loadUniversities().get(j).getSchoolName();
			
			//confirms that the uniToFind exists
			if (name.toUpperCase().equals(uniName)){
				result = 1; 			
					break;
			}
			
			//if the while loop reaches the end of the list, uniToFind does not exist
			if(j == (database.loadUniversities().size())-1) {	   		
				result = 2;
		   		return result;
			}
				j++;    			
			}
		
		//if uniToFind exists, 
				if (result == 1) {
				
				List<Account> users = database.loadUsers();	
				
				outerloop:
				for (int i = 0; i < users.size(); i++) {
					 Map<String, String> savedList = ufc.getSavedSchoolsList(users.get(i).getEmail());
					 
					 for (Map.Entry entry : savedList.entrySet()){
						 
						 if(schoolName.toUpperCase().equals(entry.getKey().toString().toUpperCase())) {
							 ufc.removeSavedSchool(users.get(i).getEmail(), uniName);
						 }						 
//							 result = 3;
//							 System.out.println("School was not removed becasue it is in someone's savedSchool list.\n ");
//							 break outerloop;
						 } 
					 }
				database.removeUniversityEmphases(schoolName); 		//removes all Emphases for the school			
				database.removeUniversityDB(schoolName);
				result = 4;
				}
			return result;		
	}

	/**
	 * Retrieves universities from database
	 * by calling loadUniversities() in DBController
	 */
	public List<University> viewUniversities() {
		List<University> listUnis = database.loadUniversities();	
		return listUnis;
	}
	
	
	
	/**
	 * Retrieves user info from database 
	 * by calling loadUsers() on a DBController object and returning it
	 * @return List of Users
	 */
	public List<Account> viewUsers() {
		List<Account> listUsers = database.loadUsers();	
		return listUsers;
	}
	
}
