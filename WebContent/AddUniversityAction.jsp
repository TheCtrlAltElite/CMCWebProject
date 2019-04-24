<%@page language="java" import="AdminFunctionalities.*,java.util.*"%>

<%@include file="verifyLogin.jsp" %>

<%

AdminInteraction ai = new AdminInteraction();

String schoolName = request.getParameter("school");
String schoolState = request.getParameter("state");
String schoolLocation =request.getParameter("location");
String schoolControl = request.getParameter("control");
int numberStudents = Integer.parseInt(request.getParameter("students"));
int percentFemale = Integer.parseInt(request.getParameter("females"));
int verbalSAT = Integer.parseInt(request.getParameter("satverbal"));
int mathSAT = Integer.parseInt(request.getParameter("satmath"));
int schoolExpenses = Integer.parseInt(request.getParameter("expenses"));
int percentFinancialAid = Integer.parseInt(request.getParameter("financial aid"));
int numApplicants = Integer.parseInt(request.getParameter("num applicants"));
int percentAdmitted = Integer.parseInt(request.getParameter("percent admitted"));
int percentEnrolled = Integer.parseInt(request.getParameter("percent enrolled"));
int academicScale = Integer.parseInt(request.getParameter("academic scale"));
int socialScale = Integer.parseInt(request.getParameter("social scale"));
int qualityScale = Integer.parseInt(request.getParameter("quality scale"));
String emphasis1 = request.getParameter("emphasis1");
String emphasis2 = request.getParameter("emphasis2");
String emphasis3 = request.getParameter("emphasis3");
String emphasis4 = request.getParameter("emphasis4");
String emphasis5 = request.getParameter("emphasis5");


boolean success = ai.addUniversity1(schoolName, schoolState, schoolLocation, schoolControl, numberStudents, percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphasis1, emphasis2, emphasis3, emphasis4, emphasis5);

if(success){
	response.sendRedirect("ViewAllUniversities.jsp");
}
else {
	response.sendRedirect("ViewAllUniversities.jsp?Error=-1");
}

%>