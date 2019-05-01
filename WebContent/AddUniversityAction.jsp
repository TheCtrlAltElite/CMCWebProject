<%@page language="java" import="AdminFunctionalities.*,java.util.*,UniversityFunctionalities.*"%>

<%@include file="verifyLogin.jsp" %>

<%

AdminInteraction adminI = new AdminInteraction();

String schoolName = null;
if(request.getParameter("school") == ""){
	response.sendRedirect("AddUniversity.jsp?Error=-1");
}
else{
	schoolName = request.getParameter("school");
	schoolName = schoolName.toUpperCase();
}

List<University> unis = adminI.viewUniversities();
List<String> schoolNames = new ArrayList<String>();
for (int i = 0; i < unis.size(); i++){
	schoolNames.add(unis.get(i).getSchoolName());
}

if(schoolNames.contains(schoolName)){
	response.sendRedirect("AddUniversity.jsp?Error=-2");
}

//String schoolState = request.getParameter("state");
//String schoolLocation =request.getParameter("location");
//String schoolControl = request.getParameter("control");

String schoolState;
if(request.getParameter("state") == ""){
	schoolState = "-1";
}
else{
	schoolState = request.getParameter("state");
	schoolState = schoolState.toUpperCase();
}

String schoolLocation;
if(request.getParameter("location") == ""){
	schoolLocation = "-1";
}
else{
	schoolLocation = request.getParameter("location");
	schoolLocation = schoolLocation.toUpperCase();
}

String schoolControl;
if(request.getParameter("control") == ""){
	schoolControl = "-1";
}
else{
	schoolControl = request.getParameter("control");
	schoolControl = schoolControl.toUpperCase();
}

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
emphasis1 = emphasis1.toUpperCase();
String emphasis2 = request.getParameter("emphasis2");
emphasis2 = emphasis2.toUpperCase();
String emphasis3 = request.getParameter("emphasis3");
emphasis3 = emphasis3.toUpperCase();
String emphasis4 = request.getParameter("emphasis4");
emphasis4 = emphasis4.toUpperCase();
String emphasis5 = request.getParameter("emphasis5");
emphasis5 = emphasis5.toUpperCase();


if(schoolName != null && !schoolNames.contains(schoolName)){
boolean success = adminI.addUniversity1(schoolName, schoolState, schoolLocation, schoolControl, numberStudents, percentFemale, verbalSAT, mathSAT, schoolExpenses, percentFinancialAid, numApplicants, percentAdmitted, percentEnrolled, academicScale, socialScale, qualityScale, emphasis1, emphasis2, emphasis3, emphasis4, emphasis5);
if(success){
	response.sendRedirect("ViewAllUniversities.jsp");
}
else {
	response.sendRedirect("AddUniversity.jsp?Error=-2");
}

}



%>