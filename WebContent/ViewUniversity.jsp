<%@ page language="java"
	import="UniversityFunctionalities.*, CMCDatabase.*"
	import="UserFunctionalities.*"%>

<html>

<%
	UserInteraction UI = new UserInteraction();
%>
<%@include file="verifyLogin.jsp"%>

<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>ViewUniversity</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<a href="javascript:history.back()">Go Back</a><br>
	<%
	String school = request.getParameter("UniName");
	List<String> details = UI.viewSchool(school);
	DBController dbc = new DBController();
	University u = dbc.getUniversity(school);
	
	%>
		<div style="text-align: center;">
		<big><big><big><%=u.getSchoolName()%></big></big></big><br>
	</div>
	<table align="center" style="text-align: left; height: 480px; width: 829px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 291px;">STATE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="State" value="<%=u.getSchoolState()%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">LOCATION<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Location" value="<%=u.getSchoolLocation()%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">CONTROL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Control" value="<%=u.getSchoolControl()%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">NUMBER OF
					STUDENTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Num Students" value=<%=u.getNumberStudents()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT FEMALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Female" value=<%=u.getPercentFemale()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="SAT Verbal" value=<%=u.getVerbalSAT()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SAT MATH<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="SAT Math" value=<%=u.getMathSAT()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">EXPENSES<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Expenses" value=<%=u.getSchoolExpenses()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT
					FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Aid" value=<%=u.getPercentFinancialAid()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">NUMBER OF
					APPLICANTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Num Applicants"
					value=<%=u.getNumApplicants()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT ADMITTED<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Admitted"
					value=<%=u.getPercentAdmitted()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT ENROLLED<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Enrolled"
					value=<%=u.getPercentEnrolled()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">ACADEMIC SCALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Academic Scale"
					value=<%=u.getAcademicScale()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SOCIAL SCALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Social Scale" value=<%=u.getSocialScale()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">QUALITY SCALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Quality Scale" value=<%=u.getQualityScale()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">EMPHASIS<br>
				</td>
				<td style="vertical-align: top; width: 520px;">
					<table style="text-align: left; width: 100%;" border="1"
						cellpadding="2" cellspacing="2">
						<tbody>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Empasis1"
									value=<%if (details.size() >= 17)
				out.println(details.get(16));%>><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Emphasis2"
									value=<%if (details.size() >= 18)
				out.println(details.get(17));%>><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Emphasis3"
									value=<%if (details.size() >= 19)
				out.println(details.get(18));%>><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Empasis4"
									value=<%if (details.size() >= 20)
				out.println(details.get(19));%>><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Emphasis5"
									value=<%if (details.size() >= 21)
				out.println(details.get(20));%>><br></td>
							</tr>
						</tbody>
					</table>
					<form method="post" action="AddToSavedSchoolsAction.jsp"
						name="Save">
						<input name="Save" value="Save" type="submit"> <input
							name="UniName" value="<%=u.getSchoolName()%>" type="hidden">
					</form>
				</td>
			</tr>
		</tbody>
	</table>

	<table align="center" style="text-align: left; height: 100px; width: 829px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 200px;"><br></td>
				<td style="vertical-align: top; width: 200px;">School<br>
				</td>
				<td style="vertical-align: top; width: 200px;">State<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Location<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Control<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Number of
					Students<br>
				</td>
				<td style="vertical-align: top; width: 200px;">PercentFemale<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Verbal SAT<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Math SAT<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Expenses<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Percent
					Financial Aid<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Number of
					Applicants<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Percent Admitted<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Percent Enrolled<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Academic Scale<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Social Scale<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Quality Scale<br>
				</td>
				<td style="vertical-align: top; width: 200px;">Emphases<br>
				</td>
			</tr>
			<%
				//DBController dbc = new DBController();
				University uni = dbc.getUniversity(request.getParameter("UniName"));
				UniversityController uc = new UniversityController();
				List<University> schools = uc.recommendedSchools(uni);
				System.out.println(schools);
				for (int i = 0; i < schools.size(); i++) {
			%>
			<tr>
				<td style="vertical-align: top; width: 100px;">
					<form method="post" action="AddToSavedSchoolsAction.jsp"
						name="Save">
						<input name="Save" value="Save" type="submit"> <input
							name="UniName" value="<%=schools.get(i).getSchoolName()%>"
							type="hidden">
					</form>
				</td>

				<td style="vertical-align: top; width: 100px;">
					<%=schools.get(i).getSchoolName()%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getSchoolState());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getSchoolLocation());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getSchoolControl());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getNumberStudents());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getPercentFemale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getVerbalSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getMathSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getSchoolExpenses());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getPercentFinancialAid());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getNumApplicants());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getPercentAdmitted());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getPercentEnrolled());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getAcademicScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getSocialScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(schools.get(i).getQualityScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						List<String> emphases = schools.get(i).getEmphasis();
							out.println(emphases);
					%><br>
				</td>
			</tr>
			<%
				}
			%>



		</tbody>
	</table>

	<br>
</body>
</html>
