<%@page language="java" import="AdminFunctionalities.*,java.util.*"%>

<%@include file="verifyLogin.jsp" %>

<%

AdminInteraction adminI = new AdminInteraction();

String schoolName = request.getParameter("school");
String schoolState = request.getParameter("state");
String schoolLocation =request.getParameter("location");
String schoolControl = request.getParameter("control");
int numberStudents = 0;
if(request.getParameter("students") == ""){
	numberStudents = -1;
}
else{
	numberStudents = Integer.parseInt(request.getParameter("students"));
}

int percentFemale = 0;
if(request.getParameter("females") == ""){
	percentFemale = -1;
}
else{
	percentFemale = Integer.parseInt(request.getParameter("females"));
}


int verbalSAT = 0;
if(request.getParameter("satverbal") == ""){
	verbalSAT = -1;
}
else{
	verbalSAT = Integer.parseInt(request.getParameter("satverbal"));
}

int mathSAT = 0;
if(request.getParameter("satmath") == ""){
	mathSAT = -1;
}
else{
	mathSAT = Integer.parseInt(request.getParameter("satmath"));
}

int schoolExpenses = 0;
if(request.getParameter("expenses") == ""){
	schoolExpenses = -1;
}
else{
	schoolExpenses = Integer.parseInt(request.getParameter("expenses"));
}

int percentFinancialAid = 0;
if(request.getParameter("financial aid") == ""){
	percentFinancialAid = -1;
}
else{
	percentFinancialAid = Integer.parseInt(request.getParameter("financial aid"));
}

int numApplicants = 0;
if(request.getParameter("num applicants") == ""){
	numApplicants = -1;
}
else{
	numApplicants = Integer.parseInt(request.getParameter("num applicants"));
}

int percentAdmitted = 0;
if(request.getParameter("percent admitted") == ""){
	percentAdmitted = -1;
}
else{
	percentAdmitted = Integer.parseInt(request.getParameter("percent admitted"));
}

int percentEnrolled = 0;
if(request.getParameter("percent enrolled") == ""){
	percentEnrolled = -1;
}
else{
	percentEnrolled = Integer.parseInt(request.getParameter("percent enrolled"));
}


int academicScale = 0;
if(request.getParameter("academic scale") == ""){
	academicScale = -1;
}
else{
	academicScale = Integer.parseInt(request.getParameter("academic scale"));
}

int socialScale = 0;
if(request.getParameter("social scale") == ""){
	socialScale = -1;
}
else{
	socialScale = Integer.parseInt(request.getParameter("social scale"));
}

int qualityScale = 0;
if(request.getParameter("quality scale") == ""){
	qualityScale = -1;
}
else{
	qualityScale = Integer.parseInt(request.getParameter("quality scale"));
}

String emphasis1 = request.getParameter("emphasis1");
String emphasis2 = request.getParameter("emphasis2");
String emphasis3 = request.getParameter("emphasis3");
String emphasis4 = request.getParameter("emphasis4");
String emphasis5 = request.getParameter("emphasis5");


boolean success = adminI.addUniversity1(schoolName, schoolState, schoolLocation, schoolControl, numberStudents, percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphasis1, emphasis2, emphasis3, emphasis4, emphasis5);

if(success){
	response.sendRedirect("ViewAllUniversities.jsp");
}
else {
	response.sendRedirect("ViewAllUniversities.jsp?Error=-1");
}

%>