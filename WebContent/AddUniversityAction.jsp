<%@page language="java" import="AdminFunctionalities.*"%>

<%@include file="verifyLogin.jsp" %>

<%
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
//String type = request.getParameter("Type");
char type = request.getParameter("Type").charAt(0); 
char status = request.getParameter("Status").charAt(0); 

User newUser = new User(firstName, lastName, username, password, type, status);

UserController uc = (UserController)session.getAttribute("UC");
uc.addUser(newUser);
response.sendRedirect("Menu.jsp");
%>

System.out.println("Enter School State: \n");
//			String schoolState = sc.nextLine();
//			System.out.println("Enter School Location: \n");
//			String schoolLocation = sc.nextLine();
//			System.out.println("Enter School Control: \n");
//			String schoolControl = sc.nextLine();
//			System.out.println("Enter Number of Students: \n");
//			int numberStudents = sc.nextInt();
//			System.out.println("Enter Percent Female Students: \n");
//			int percentFemale = sc.nextInt();
//			System.out.println("Enter Average Verbal SAT Score: \n");
//			int verbalSAT = sc.nextInt();
//			System.out.println("Enter Average Math SAT Score: \n");
//			int mathSAT = sc.nextInt();
//			System.out.println("Enter School Cost: \n");
//			int schoolExpenses = sc.nextInt();
//			System.out.println("Enter Percent of Students Receiving Financial Aid: \n");
//			int percentFinancialAid = sc.nextInt();
//			System.out.println("Enter Number of Applicants: \n");
//			int numApplicants = sc.nextInt();
//			System.out.println("Enter Percent of Students Admitted: \n");
//			int percentAdmitted = sc.nextInt();
//			System.out.println("Enter Percent of Students Enrolled: \n");
//			int percentEnrolled = sc.nextInt();
//			System.out.println("Enter Academic Scale Rating (1-5): \n");
//			int academicScale = sc.nextInt();
//			System.out.println("Enter Social Scale Rating (1-5): \n");
//			int socialScale = sc.nextInt();
//			System.out.println("Enter Quality Scale Rating (1-5): \n");
//			int qualityScale = sc.nextInt();
//			sc.nextLine();
//	//		System.out.println("Enter 5 Emphases, type 'q' anytime to quit: \n");
//			String emphasis = sc.nextLine();