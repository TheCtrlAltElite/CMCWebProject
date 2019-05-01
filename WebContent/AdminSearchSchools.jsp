<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>School Search</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<div style="text-align: left;"><a href="AdminMenu.jsp">Back to menu</a>
	<form method="post" action="AdminSearchAction.jsp" name="AdminSearch">
	<br>
	<div style="text-align: center;">
		<big><big><big>SEARCH
					MENU</big></big></big><br>
	</div>
	<div style="text-align: center;">Type in some arguments for schools you
would like to edit.<br>
</div>
			<%
			String Error = request.getParameter("Error");
			if (Error != null && Error.equals("-1")) {
				out.println("Please type in some parameters.");
				}%>
	<br>
	<table align="center" style="text-align: left; height: 480px; width: 829px;"
		border="10" bordercolor="gray" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">SCHOOL<br>
				</td>
				<td style="vertical-align: top; width: 520px;text-align: center;">Contains <input
					name="SchoolName"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">STATE<br>
				</td>
				<td style="vertical-align: top; width: 520px;text-align: center;">Contains <input
					name="State"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">LOCATION<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					name="Location">(Urban, Suburban, Small-City, or -1 if
					Unknown)<br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">CONTROL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					name="Control">(State or Private)<br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">NUMBER OF
					STUDENTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="NumStudents"> and <input name="NumStudents2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">PERCENT FEMALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentFemale"> and <input name="PercentFemale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="SATVerbal"> and <input name="SATVerbal2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">SAT MATH<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="SATMath"> and <input name="SATMath2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">EXPENSES<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="Expenses"> and <input name="Expenses2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">PERCENT
					FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentAid"> and <input name="PercentAid2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">NUMBER OF
					APPLICANTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="NumApplicants"> and <input name="NumApplicants2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">PERCENT ADMITTED<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentAdmitted"> and <input name="PercentAdmitted2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">PERCENT ENROLLED<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentEnrolled"> and <input name="PercentEnrolled2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">ACADEMIC
					SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="AcademicScale"> and <input name="AcademicScale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">SOCIAL
					SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="SocialScale"> and <input name="SocialScale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;text-align: center;">QUALITY
					SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="QualityScale"> and <input name="QualityScale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: middle; width: 291px;text-align: center;">EMPHASIS<br>
				</td>
				<td style="vertical-align: top; width: 520px;">Contains Either:
					<table style="text-align: left; width: 100%;" border="1"
						cellpadding="2" cellspacing="2">
						<tbody>
							<tr>
								<td style="vertical-align: top;"><input name="Emphasis1"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="Emphasis2"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="Emphasis3"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="Emphasis4"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="Emphasis5"><br>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<table style="text-align: left; width: 100px; height: 40px;"
		align="center" border="0" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
			<td><input name="Submit" type="submit"></td>
			<td><input name="Reset" type="reset"></td>
			</tr>
			</tbody>
			</table>
	<br>
	<br>
	</form>
	<br>
</body>
</html>

