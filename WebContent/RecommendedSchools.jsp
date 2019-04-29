<%@ page language="java" import="UniversityFunctionalities.*"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	UniversityController uc = new UniversityController();
	University uni = uc.getDetailsUni(request.getParameter("UniName"));
	List<University> schools = uc.recommendedSchools(uni);
				for (int i = 0; i < afc.viewUniversities().size(); i++) {
			%>
	<table style="text-align: left; height: 480px; width: 829px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>

				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolName());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolState());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolLocation());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolControl());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getNumberStudents());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentFemale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getVerbalSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getMathSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolExpenses());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentFinancialAid());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getNumApplicants());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentAdmitted());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentEnrolled());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getAcademicScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getSocialScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(afc.viewUniversities().get(i).getQualityScale());
					%><br>
				</td>
				<td style="vertical-align: top; text-align: center;">
					<form method="post" action="AdminEditUniversity.jsp" name="Edit">
						<input name="View" value="Edit" type="submit"> <input
							name="SchoolName"
							value=<%=afc.viewUniversities().get(i).getSchoolName()%>
							type="hidden">
					</form>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>