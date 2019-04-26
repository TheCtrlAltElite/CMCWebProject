<%@ page language="java" import="UserFunctionalities.*, UniversityFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<% 
	UserInteraction ui = new UserInteraction();
	String schoolName = request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	String numStudents1 = request.getParameter("NumStudents");
	String numStudents2 = request.getParameter("NumStudents2");
	String percentFemale1 = request.getParameter("PercentFemale");
	String percentFemale2 = request.getParameter("PercentFemale2");
	String satVerbal1 = request.getParameter("SATVerbal");
	String satVerbal2 = request.getParameter("SATVerbal2");
	String satMath1 = request.getParameter("SATMath");
	String satMath2 = request.getParameter("SATMath2");
	String expenses1 = request.getParameter("Expenses");
	String expenses2 = request.getParameter("Expenses2");
	String percentFinancialAid1 = request.getParameter("PercentAid");
	String percentFinancialAid2 = request.getParameter("PercentAid2");
	String numApplicants1 = request.getParameter("NumApplicants");
	String numApplicants2 = request.getParameter("NumApplicants2");
	String percentAdmitted1 = request.getParameter("PercentAdmitted");
	String percentAdmitted2 = request.getParameter("PercentAdmitted2");
	String percentEnrolled1 = request.getParameter("PercentEnrolled");
	String percentEnrolled2 = request.getParameter("PercentEnrolled2");
	String academicScale1 = request.getParameter("AcademicScale");
	String academicScale2 = request.getParameter("AcademicScale2");
	String socialScale1 = request.getParameter("SocialScale");
	String socialScale2 = request.getParameter("SocialScale2");
	String qualityScale1 = request.getParameter("QuailityScale");
	String qualityScale2 = request.getParameter("QualityScale2");
	
	List<String> emphases = new ArrayList<String>();
	emphases.add(request.getParameter("Emphasis1"));
	emphases.add(request.getParameter("Emphasis2"));
	emphases.add(request.getParameter("Emphasis3"));
	emphases.add(request.getParameter("Emphasis4"));
	emphases.add(request.getParameter("Emphasis5"));


	
	
	List<University> unis = ui.searchSchools(schoolName, state, location, control, numStudents1, numStudents2, percentFemale1, percentFemale2, satVerbal1, satVerbal2, 
			satMath1, satMath2, expenses1, expenses2, percentFinancialAid1, percentFinancialAid2, 
			numApplicants1, numApplicants2, percentAdmitted1, percentAdmitted2, percentEnrolled1, percentEnrolled2, 
			academicScale1, academicScale2, socialScale1, socialScale2, qualityScale1, qualityScale2, emphases);
	String[] listUnis = new String[unis.size()];
	for(int i = 0; i < unis.size(); i++){
		listUnis[i] = unis.get(i).getSchoolName();
	}

	response.sendRedirect("SearchResults.jsp");
%>
