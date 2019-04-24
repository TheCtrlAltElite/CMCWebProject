 /**
 * 
 */
package AccountFunctionalities;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

//imports
import javax.mail.MessagingException;
import CMCDatabase.DBController;

/**
 * @author CtrlAltElite
 */

public class AccountInteraction {

	private AccountController accController;
	private Account account;
	private DBController database;

	
	/**
	 * Constructor for Account interaction
	 */
	public AccountInteraction() {
		this.accController = new AccountController();
		this.account = new Account();
		this.database = new DBController();
		
	}
	
	/**
	 * Checks the username and password against the database
	 * Grants account access to the website or alerts them that their credentials were
	 * incorrect.
	 * 
	 * @param username
	 * @param password
	 * @throws Exception 
	 */
	public int login(String username, String password) throws Exception {
		int status = accController.login(username, password);
		return status;
	}

	/**
	 * Calls the logOut() method from AccountController
	 */
	public void logOut() {
		accController.logOut();
	}
	
	/**
	 * Calls the isUserReal() Method in AccountContoller
	 * @param username
	 */
	public void isUserReal(String username) {
		accController.isUserReal(username);
	}
	
	/**
	 * returns the password for the username given by calling getPassword() in AccountController
	 * @param username
	 * @return the password for the account
	 */
	public String getPassword(String username) {
		return accController.getPassword(username);
		
	}
	
	/**
	 * Displays a page with the account profile information by calling view profile in AccountController
	 * 
	 * @param username
	 */
	public List<String> viewProfile(String username) {
		return accController.viewProfile(username);
	}
	
	/**
	 *allows the user to edit their profile by calling edit profile in AccountController
	 * @param username
	 */
	public boolean editProfile(String firstName, String lastName, String username, String password, String type, String status) {
		char typeToPass = type.charAt(0);
		char statusToPass = status.charAt(0);
		return this.accController.editProfile(firstName, lastName, username, password, typeToPass, statusToPass);	
	}
	
	/**
	 * Allows the user to reset their password by calling resetPassword() in AccountController
	 * @param O
	 * @param n1
	 * @param n2
	 */
	public void resetPassword(String o, String n1, String n2) {
		accController.resetPassword(o, n1, n2);
	}
	
	/**
	 * sends the user an email to allow them to change their password by
	 * calling recoverPassword in AccountController
	 * @param email
	 * @param firstName
	 * @param lastName
	 * @throws MessagingException 
	 */
	public void recoverPassword(String email) throws MessagingException {
		accController.recoverPassword(email);
	}
	
	/**
	 * adds a profile picture by finding the string  JPEG the picture is saved as by
	 * calling addProfile picture in Account Controller
	 * @param jpeg
	 */
	public void addProfilePicture(String email, String jpeg) {
		accController.addProfilePicture(email, jpeg);
	}
	
	public Account getCurrentAccount() {
		return accController.getCurrentAccount();
	}
}
