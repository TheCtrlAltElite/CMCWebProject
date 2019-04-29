<%@ page language="java" import="UniversityFunctionalities.*"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	DBController dbc = new DBController();
	University uni = dbc.getUniversity(request.getParameter("UniName"));
	UniversityController uc = new UniversityController();
	List<University> schools = uc.recommendedSchools(uni);
	System.out.println(schools);
				for (int i = 0; i < schools.size(); i++) {
			%>
	<table style="text-align: left; height: 480px; width: 829px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>

				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getSchoolName());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getSchoolState());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getSchoolLocation());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getSchoolControl());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getNumberStudents());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getPercentFemale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getVerbalSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getMathSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getSchoolExpenses());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getPercentFinancialAid());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getNumApplicants());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getPercentAdmitted());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getPercentEnrolled());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getAcademicScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getSocialScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
					<%
						out.println(uni.get(0).getQualityScale());
					%><br>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>