<%@ page language="java" import="UserFunctionalities.*, UniversityFunctionalities.*, AdminFunctionalities.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="verifyLogin.jsp"%>
<%
	AdminFunctionalityController afc = new AdminFunctionalityController();
	UserInteraction ui = new UserInteraction();
	boolean status = true;
	String schoolName = request.getParameter("SchoolName");
	schoolName = schoolName.toUpperCase();
	if (schoolName == "" || schoolName == null) {
		schoolName = null;
	}
	String state = request.getParameter("State");
	state = state.toUpperCase();
	if (state == "" || state == null) {
		state = null;
	}
	String location = request.getParameter("Location");
	location = location.toUpperCase();
	if (location == "" || location == null) {
		location = null;
	}
	String control = request.getParameter("Control");
	control = control.toUpperCase();
	if (control == "" || control == null) {
		control = null;
	}
	String numStudents1 = request.getParameter("NumStudents");
	if (numStudents1 == "" || numStudents1 == null) {
		numStudents1 = null;
	}
	String numStudents2 = request.getParameter("NumStudents2");
	if (numStudents2 == "" || numStudents2 == null) {
		numStudents2 = null;
	}
	String percentFemale1 = request.getParameter("PercentFemale");
	if (percentFemale1 == "" || percentFemale1 == null) {
		percentFemale1 = null;
	}
	String percentFemale2 = request.getParameter("PercentFemale2");
	if (percentFemale2 == "" || percentFemale2 == null) {
		percentFemale2 = null;
	}
	String satVerbal1 = request.getParameter("SATVerbal");
	if (satVerbal1 == "" || satVerbal1 == null) {
		satVerbal1 = null;
	}
	String satVerbal2 = request.getParameter("SATVerbal2");
	if (satVerbal2 == "" || satVerbal2 == null) {
		satVerbal2 = null;
	}
	String satMath1 = request.getParameter("SATMath");
	if (satMath1 == "" || satMath1 == null) {
		satMath1 = null;
	}
	String satMath2 = request.getParameter("SATMath2");
	if (satMath2 == "" || satMath2 == null) {
		satMath2 = null;
	}
	String expenses1 = request.getParameter("Expenses");
	if (expenses1 == "" || expenses1 == null) {
		expenses1 = null;
	}
	String expenses2 = request.getParameter("Expenses2");
	if (expenses2 == "" || expenses2 == null) {
		expenses2 = null;
	}
	String percentFinancialAid1 = request.getParameter("PercentAid");
	if (percentFinancialAid1 == "" || percentFinancialAid1 == null) {
		percentFinancialAid1 = null;
	}
	String percentFinancialAid2 = request.getParameter("PercentAid2");
	if (percentFinancialAid2 == "" || percentFinancialAid2 == null) {
		percentFinancialAid2 = null;
	}
	String numApplicants1 = request.getParameter("NumApplicants");
	if (numApplicants1 == "" || numApplicants1 == null) {
		numApplicants1 = null;
	}
	String numApplicants2 = request.getParameter("NumApplicants2");
	if (numApplicants2 == "" || numApplicants2 == null) {
		numApplicants2 = null;
	}
	String percentAdmitted1 = request.getParameter("PercentAdmitted");
	if (percentAdmitted1 == "" || percentAdmitted1 == null) {
		percentAdmitted1 = null;
	}
	String percentAdmitted2 = request.getParameter("PercentAdmitted2");
	if (percentAdmitted2 == "" || percentAdmitted2 == null) {
		percentAdmitted2 = null;
	}
	String percentEnrolled1 = request.getParameter("PercentEnrolled");
	if (percentEnrolled1 == "" || percentEnrolled1 == null) {
		percentEnrolled1 = null;
	}
	String percentEnrolled2 = request.getParameter("PercentEnrolled2");
	if (percentEnrolled2 == "" || percentEnrolled2 == null) {
		percentEnrolled2 = null;
	}
	String academicScale1 = request.getParameter("AcademicScale");
	if (academicScale1 == "" || academicScale1 == null) {
		academicScale1 = null;
	}
	String academicScale2 = request.getParameter("AcademicScale2");
	if (academicScale2 == "" || academicScale2 == null) {
		academicScale2 = null;
	}
	String socialScale1 = request.getParameter("SocialScale");
	if (socialScale1 == "" || socialScale1 == null) {
		socialScale1 = null;
	}
	String socialScale2 = request.getParameter("SocialScale2");
	if (socialScale2 == "" || socialScale2 == null) {
		socialScale2 = null;
	}
	String qualityScale1 = request.getParameter("QualityScale");
	if (qualityScale1 == "" || qualityScale1 == null) {
		qualityScale1 = null;
	}
	String qualityScale2 = request.getParameter("QualityScale2");
	if (qualityScale2 == "" || qualityScale2 == null) {
		qualityScale2 = null;
	}
	String emphasis1 = request.getParameter("Emphasis1");
	emphasis1 = emphasis1.toUpperCase();
	if (emphasis1 == "" || emphasis1 == null) {
		emphasis1 = null;
	}
	String emphasis2 = request.getParameter("Emphasis2");
	emphasis2 = emphasis2.toUpperCase();
	if (emphasis2 == "" || emphasis2 == null) {
		emphasis2 = null;
	}
	String emphasis3 = request.getParameter("Emphasis3");
	emphasis3 = emphasis3.toUpperCase();
	if (emphasis3 == "" || emphasis3 == null) {
		emphasis3 = null;
	}
	String emphasis4 = request.getParameter("Emphasis4");
	emphasis4 = emphasis4.toUpperCase();
	if (emphasis4 == "" || emphasis4 == null) {
		emphasis4 = null;
	}
	String emphasis5 = request.getParameter("Emphasis5");
	emphasis5 = emphasis5.toUpperCase();
	if (emphasis5 == "" || emphasis5 == null) {
		emphasis5 = null;
	}

	List<String> emphases = new ArrayList<String>();
	if (emphasis1 != null) {
		emphases.add(emphasis1);
	}
	if (emphasis2 != null) {
		emphases.add(emphasis2);
	}
	if (emphasis3 != null) {
		emphases.add(emphasis3);
	}
	if (emphasis4 != null) {
		emphases.add(emphasis4);
	}
	if (emphasis5 != null) {
		emphases.add(emphasis5);
	}

	if (schoolName == "" || schoolName == null) {
		System.out.println("hi");
		if (state == "" || state == null) {
			if (location == "" || location == null) {

				if (control == "" || control == null) {
					if (numStudents1 == "" || numStudents1 == null || numStudents2 == ""
							|| numStudents2 == null) {
						if (percentFemale1 == "" || percentFemale1 == null || percentFemale2 == ""
								|| percentFemale2 == null) {
							if (satVerbal1 == "" || satVerbal1 == null || satVerbal2 == ""
									|| satVerbal2 == null) {
								if (satMath1 == "" || satMath1 == null || satMath2 == "" || satMath2 == null) {
									if (expenses1 == "" || expenses1 == null || expenses2 == ""
											|| expenses2 == null) {
										if (percentFinancialAid1 == "" || percentFinancialAid1 == null
												|| percentFinancialAid2 == "" || percentFinancialAid2 == null) {
											if (numApplicants1 == "" || numApplicants1 == null
													|| numApplicants2 == "" || numApplicants2 == null) {
												if (percentAdmitted1 == "" || percentAdmitted1 == null
														|| percentAdmitted2 == "" || percentAdmitted2 == null) {
													if (percentEnrolled1 == "" || percentEnrolled1 == null
															|| percentEnrolled2 == ""
															|| percentEnrolled2 == null) {
														if (academicScale1 == "" || academicScale1 == null
																|| academicScale2 == ""
																|| academicScale2 == null) {
															if (socialScale1 == "" || socialScale1 == null
																	|| socialScale2 == ""
																	|| socialScale2 == null) {
																if (qualityScale1 == "" || qualityScale1 == null
																		|| qualityScale2 == ""
																		|| qualityScale2 == null) {
																	if (emphases.size() == 0
																			|| emphases == null) {
																		response.sendRedirect(
																				"AdminSearchSchools.jsp?Error=-1");
																		status = false;
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	if (status) {
		List<University> unis = ui.searchSchools(schoolName, state, location, control, numStudents1,
				numStudents2, percentFemale1, percentFemale2, satVerbal1, satVerbal2, satMath1, satMath2,
				expenses1, expenses2, percentFinancialAid1, percentFinancialAid2, numApplicants1,
				numApplicants2, percentAdmitted1, percentAdmitted2, percentEnrolled1, percentEnrolled2,
				academicScale1, academicScale2, socialScale1, socialScale2, qualityScale1, qualityScale2,
				emphases);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SearchResults</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<div style="text-align: left;">
		<a href="AdminSearchSchools.jsp">Return to search</a>
		<table align="center" style="text-align: center; width: 800px; height: 108px;"
			border="10" bordercolor="grey" cellpadding="2" cellspacing="2">
			<br>
			<tbody>
				<div style="text-align: middle;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<%
						out.println("Search results show " + unis.size() + " universities.");
							for (int i = 0; i < unis.size(); i++) {
					%>
				</div>
				<tr>
					<td style="vertical-align: top; width: 100px;">
						<form method="post" action="AdminEditUniversity.jsp" name="Edit">
						<input name="Edit" value="Edit" type="submit"> <input
							name="SchoolName"
							value="<%=unis.get(i).getSchoolName()%>"
							type="hidden">
					</form>
					<td style="vertical-align: top; width: 600px;"><%=unis.get(i).getSchoolName()%><br>
					</td>
					<td style="vertical-align: top; width: 100px;">
						<form method="post" action="AdminDeleteUniversity.jsp"
						name="Delete">
						<input name="Delete" value="Delete" type="submit"> <input
							name="University"
							value="<%=unis.get(i).getSchoolName()%>"
							type="hidden">
					</form>
					</td>
				</tr>
				<%
					}
				%>

			</tbody>
		</table>
</body>
</html>
<% } %>



