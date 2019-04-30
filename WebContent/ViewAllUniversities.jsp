<%@page language="java" import="AdminFunctionalities.*"%>
<html>
<head>
<title>UniTable</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">

	<% 	
	AdminFunctionalityController afc = new AdminFunctionalityController();

%>
<%@include file="verifyLogin.jsp" %>

<div style="text-align: left;"><a href="AdminMenu.jsp">Back to menu</a><br>
	</div>


	<br>
	<table align="center" style="text-align: left; width: 1623px; height: 108px;"
		border="10" bordercolor="gray" cellpadding="3" cellspacing="0">
		<tbody>
			<tr>
				<td colspan="18"
					style="vertical-align: top; width: 23px; text-align: center;"><a
					href="AddUniversity.jsp">Add a New University</a><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 130px; text-align: center;">School<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">State<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Location<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Control<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">#
					of Students<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					Females<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">SAT
					Verbal<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">SAT
					Math<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Expenses<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					With Financial Aid<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">#
					of Applicants<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					Admitted<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					Enrolled<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Academics
					Scale<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Social
					Scale<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Quality
					of Life Scale<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;"><br>
				</td>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;"><br>
				</td>
			</tr>
			<%
				for (int i = 0; i < afc.viewUniversities().size(); i++) {
			%>
			<tr>

				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolName());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolState());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolLocation());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolControl());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getNumberStudents());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentFemale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getVerbalSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getMathSAT());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getSchoolExpenses());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentFinancialAid());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getNumApplicants());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentAdmitted());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getPercentEnrolled());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getAcademicScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getSocialScale());
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px; text-align: center;">
					<%
						out.println(afc.viewUniversities().get(i).getQualityScale());
					%><br>
				</td>
				<td style="vertical-align: top; text-align: center;">
					<form method="post" action="AdminEditUniversity.jsp" name="Edit">
						<input name="Edit" value="Edit" type="submit"> <input
							name="SchoolName"
							value="<%=afc.viewUniversities().get(i).getSchoolName()%>"
							type="hidden">
					</form>
					</td>
					<td style="vertical-align: top; text-align: center;">
					<form method="post" action="AdminDeleteUniversity.jsp"
						name="Delete">
						<input name="Delete" value="Delete" type="submit"> <input
							name="University"
							value="<%=afc.viewUniversities().get(i).getSchoolName()%>"
							type="hidden">
					</form>
</td>
			</tr>

			<%
				}
			%>
		</tbody>
	</table>
	<br>

	<br>
	<br>
</body>
</html>
