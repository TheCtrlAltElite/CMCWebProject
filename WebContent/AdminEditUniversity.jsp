<%@ page language="java" import="UniversityFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	UniversityController uc = new UniversityController();
%>
<html>
<head>
<%
	List<String> details = uc.getDetailsUni(request.getParameter("SchoolName"));
%>
<title>AdminEditUser</title>
</head>
<body>
	<form method="post" action="AdminEditUniversityAction.jsp"
		name="AdminEditUser">
		<a href="AdminMenu.jsp">Back to menu</a> <br> <br>
		<table style="text-align: left; height: 480px; width: 829px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top; width: 291px;">SCHOOL<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						readonly="readonly" name="School Name" value=<%=details.get(0)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">STATE<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="State" value=<%=details.get(1)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">LOCATION<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Location" value=<%=details.get(2)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">CONTROL<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Control" value=<%=details.get(3)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">NUMBER OF
						STUDENTS<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Num Students" value=<%=details.get(4)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">PERCENT FEMALE<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Percent Female" value=<%=details.get(5)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">SAT VERBAL<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="SAT Verbal" value=<%=details.get(6)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">SAT MATH<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="SAT Math" value=<%=details.get(7)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">EXPENSES<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Expenses" value=<%=details.get(8)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">PERCENT
						FINANCIAL AID<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Percent Aid" value=<%=details.get(9)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">NUMBER OF
						APPLICANTS<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Num Applicants" value=<%=details.get(10)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">PERCENT
						ADMITTED<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Percent Admitted" value=<%=details.get(11)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">PERCENT
						ENROLLED<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Percent Enrolled" value=<%=details.get(12)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">ACADEMIC SCALE<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Academic Scale" value=<%=details.get(13)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">SOCIAL SCALE<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Social Scale" value=<%=details.get(14)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">QUALITY SCALE<br>
					</td>
					<td style="vertical-align: top; width: 520px;"><input
						name="Quality Scale" value=<%=details.get(15)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 291px;">EMPHASIS<br>
					</td>
					<td style="vertical-align: top; width: 520px;">
						<table style="text-align: left; width: 100%;" border="1"
							cellpadding="2" cellspacing="2">
							<tbody>
								<tr>
									<td style="vertical-align: top;"><input
										name="Emphasis1"
										value=<%if (details.size() >= 17)
				out.println(details.get(16));%>><br></td>
								</tr>
								<tr>
									<td style="vertical-align: top;"><input
										name="Emphasis2"
										value=<%if (details.size() >= 18)
				out.println(details.get(17));%>><br></td>
								</tr>
								<tr>
									<td style="vertical-align: top;"><input
										name="Emphasis3"
										value=<%if (details.size() >= 19)
				out.println(details.get(18));%>><br></td>
								</tr>
								<tr>
									<td style="vertical-align: top;"><input
										name="Emphasis4"
										value=<%if (details.size() >= 20)
				out.println(details.get(19));%>><br></td>
								</tr>
								<tr>
									<td style="vertical-align: top;"><input
										name="Emphasis5"
										value=<%if (details.size() >= 21)
				out.println(details.get(20));%>><br></td>
								</tr>
							</tbody>
						</table> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<br> <input value="Edit University" name="EditUniversity" type="submit">&nbsp;&nbsp;&nbsp;
		<input name="Reset" type="reset"> <br>
	</form>
	<br>
</body>
</html>





