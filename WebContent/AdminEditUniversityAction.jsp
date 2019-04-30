<%@ page language="java" import="AdminFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<%
	AdminInteraction adminI = (AdminInteraction)session.getAttribute("adminI");
	String schoolName = request.getParameter("School Name");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	String numStudents = request.getParameter("Num Students");
	String percentFemales = request.getParameter("Percent Female");
	String satVerbal = request.getParameter("SAT Verbal");
	String satMath = request.getParameter("SAT Math");
	String expenses = request.getParameter("Expenses");
	String percentAid = request.getParameter("Percent Aid");
	String numApplicants = request.getParameter("Num Applicants");
	String percentAdmitted = request.getParameter("Percent Admitted");
	String percentEnrolled = request.getParameter("Percent Enrolled");
	String acadScale = request.getParameter("Academic Scale");
	String socialScale = request.getParameter("Social Scale");
	String qualScale = request.getParameter("Quality Scale");
	List<String> emphases = new ArrayList<String>();
	String emph1 = request.getParameter("Emphasis1");
	String emph2 = request.getParameter("Emphasis2");
	String emph3 = request.getParameter("Emphasis3");
	String emph4 = request.getParameter("Emphasis4");
	String emph5 = request.getParameter("Emphasis5");
// 	if(emph1 != null){
// 		emphases.add(emph1);
// 	}
// 	if(emph2 != null){
// 		emphases.add(emph2);
// 	}
// 	if(emph3 != null){
// 		emphases.add(emph3);
// 	}
// 	if(emph4 != null){
// 		emphases.add(emph4);
// 	}
// 	if(emph5 != null){
// 		emphases.add(emph5);
// 	}

 	boolean change = adminI.editUniversity(schoolName, state, location, control, numStudents, percentFemales,
 			satVerbal, satMath, expenses, percentAid, numApplicants, percentAdmitted, percentEnrolled,
 			acadScale, socialScale, qualScale, emph1, emph2, emph3, emph4 ,emph5);
	
	
	if (change) {
		response.sendRedirect("ViewAllUniversities.jsp");
	} else {
		response.sendRedirect("ViewAllUniversities.jsp?Error=-1");
	}
%>
