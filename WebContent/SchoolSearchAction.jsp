<%@ page language="java" import="UserFunctionalities.*, UniversityFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<% 
	UserInteraction ui = new UserInteraction();
	String schoolName = request.getParameter("SchoolName");
	if(schoolName == "" || schoolName == null){
		schoolName = null;
	}
	String state = request.getParameter("State");
	if(state == "" || state == null){
		state = null;
	}
	String location = request.getParameter("Location");
	if(location == "" || location == null){
		location = null;
	}
	String control = request.getParameter("Control");
	if(control == "" || control == null){
		control = null;
	}
	String numStudents1 = request.getParameter("NumStudents");
	if(numStudents1 == "" || numStudents1 == null){
		numStudents1 = null;
	}
	String numStudents2 = request.getParameter("NumStudents2");
	if(numStudents2 == "" || numStudents2 == null){
		numStudents2 = null;
	}
	String percentFemale1 = request.getParameter("PercentFemale");
	if(percentFemale1 == "" || percentFemale1 == null){
		percentFemale1 = null;
	}
	String percentFemale2 = request.getParameter("PercentFemale2");
	if(percentFemale2 == "" || percentFemale2 == null){
		percentFemale2 = null;
	}
	String satVerbal1 = request.getParameter("SATVerbal");
	if(satVerbal1 == "" || satVerbal1 == null){
		satVerbal1 = null;
	}
	String satVerbal2 = request.getParameter("SATVerbal2");
	if(satVerbal2 == "" || satVerbal2 == null){
		satVerbal2 = null;
	}
	String satMath1 = request.getParameter("SATMath");
	if(satMath1 == "" || satMath1 == null){
		satMath1 = null;
	}
	String satMath2 = request.getParameter("SATMath2");
	if(satMath2 == "" || satMath2 == null){
		satMath2 = null;
	}
	String expenses1 = request.getParameter("Expenses");
	if(expenses1 == ""|| expenses1 == null){
		expenses1 = null;
	}
	String expenses2 = request.getParameter("Expenses2");
	if(expenses2 == "" || expenses2 == null){
		expenses2 = null;
	}
	String percentFinancialAid1 = request.getParameter("PercentAid");
	if(percentFinancialAid1 == "" || percentFinancialAid1 == null){
		percentFinancialAid1 = null;
	}
	String percentFinancialAid2 = request.getParameter("PercentAid2");
	if(percentFinancialAid2 == "" || percentFinancialAid2 == null){
		percentFinancialAid2 = null;
	}
	String numApplicants1 = request.getParameter("NumApplicants");
	if(numApplicants1 == "" || numApplicants1 == null){
		numApplicants1 = null;
	}
	String numApplicants2 = request.getParameter("NumApplicants2");
	if(numApplicants2 == "" || numApplicants2 == null){
		numApplicants2 = null;
	}
	String percentAdmitted1 = request.getParameter("PercentAdmitted");
	if(percentAdmitted1 == "" || percentAdmitted1 == null){
		percentAdmitted1 = null;
	}
	String percentAdmitted2 = request.getParameter("PercentAdmitted2");
	if(percentAdmitted2 == "" || percentAdmitted2 == null){
		percentAdmitted2 = null;
	}
	String percentEnrolled1 = request.getParameter("PercentEnrolled");
	if(percentEnrolled1 == "" || percentEnrolled1 == null){
		percentEnrolled1 = null;
	}
	String percentEnrolled2 = request.getParameter("PercentEnrolled2");
	if(percentEnrolled2 == "" || percentEnrolled2 == null){
		percentEnrolled2 = null;
	}
	String academicScale1 = request.getParameter("AcademicScale");
	if(academicScale1 == "" || academicScale1 == null){
		academicScale1 = null;
	}
	String academicScale2 = request.getParameter("AcademicScale2");
	if(academicScale2 == "" || academicScale2 == null){
		academicScale2 = null;
	}
	String socialScale1 = request.getParameter("SocialScale");
	if(socialScale1 == "" || socialScale1 == null){
		socialScale1 = null;
	}
	String socialScale2 = request.getParameter("SocialScale2");
	if(socialScale2 == "" || socialScale2 == null){
		socialScale2 = null;
	}
	String qualityScale1 = request.getParameter("QualityScale");
	if(qualityScale1 == "" || qualityScale1 == null){
		qualityScale1 = null;
	}
	String qualityScale2 = request.getParameter("QualityScale2");
	if(qualityScale2 == "" || qualityScale2 == null){
		qualityScale2 = null;
	}
	String emphasis1 = request.getParameter("Emphasis1");
	if(emphasis1 == "" || emphasis1 == null){
		emphasis1 = null;
	}
	String emphasis2 = request.getParameter("Emphasis2");
	if(emphasis2 == "" || emphasis2 == null){
		emphasis2 = null;
	}
	String emphasis3 = request.getParameter("Emphasis3");
	if(emphasis3 == "" || emphasis3 == null){
		emphasis3 = null;
	}
	String emphasis4 = request.getParameter("Emphasis4");
	if(emphasis4 == "" || emphasis4 == null){
		emphasis4 = null;
	}
	String emphasis5 = request.getParameter("Emphasis5");
	if(emphasis5 == "" || emphasis5 == null){
		emphasis5 = null;
	}
	
	List<String> emphases = new ArrayList<String>();
// 	emphases.add(emphasis1);
// 	emphases.add(emphasis2);
// 	emphases.add(emphasis3);
// 	emphases.add(emphasis4);
// 	emphases.add(emphasis5);

	System.out.println("This" + schoolName + " " + state + " " + location + " " + control + " " + numStudents1 + " " + numStudents2 + " " + percentFemale1 + " " + percentFemale2 + " " + satVerbal1 + " " + satVerbal2 + " " + satMath1 + " " + satMath2 + " " + expenses1 + " " + expenses2 + " " + percentFinancialAid1 + " " + percentFinancialAid2 + " " + numApplicants1 + " " + numApplicants2 + " " + percentAdmitted1 + " " + percentAdmitted2 + " " + percentEnrolled1 + " " + percentEnrolled2 + " " + academicScale1 + " " + academicScale2 + " " + socialScale1 + " " + socialScale2 + " " + qualityScale1 + " " + qualityScale2 + " " + emphases);
	
	List<University> unis = ui.searchSchools(schoolName, state, location, control, numStudents1, numStudents2, percentFemale1, percentFemale2, satVerbal1, satVerbal2, satMath1, satMath2, expenses1, expenses2, percentFinancialAid1, percentFinancialAid2, numApplicants1, numApplicants2, percentAdmitted1, percentAdmitted2, percentEnrolled1, percentEnrolled2, academicScale1, academicScale2, socialScale1, socialScale2, qualityScale1, qualityScale2, emphases);
	System.out.println(unis);
	%>
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SearchResults</title>
	</head>
	<body>
		<table style="text-align: center; width: 800px; height: 108px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<%
				out.println(unis.size());
					for (int i = 0; i < unis.size(); i++) {
						
				%>
				<tr>
					<td style="vertical-align: top; width: 100px;"><a
						href="RemoveFromSavedSchoolsAction.jsp"><button value="Remove"
								name="Remove" >Remove</button></a></td>
					<td style="vertical-align: top; width: 600px;">
						<%
							out.println("University = " + unis.get(i).getSchoolName());
						%><br>
					</td>
					<td style="vertical-align: top; width: 100px;"><a
						href="ViewUniversity.jsp"><button value="View" name="View">View</button></a>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</body>
	</html>


