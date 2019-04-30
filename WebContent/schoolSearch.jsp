<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>School Search</title>
</head>
<body>
	<form method="post" action="SchoolSearchAction.jsp" name="SchoolSearch">
	<br>
	<div style="text-align: left;">
		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <big><big><big>SEARCH
					MENU</big></big></big><br>
	</div>
	<br>
	<table style="text-align: left; height: 480px; width: 829px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 291px;">SCHOOL<br>
				</td>
				<td style="vertical-align: top; width: 520px;">Contains <input
					name="SchoolName"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">STATE<br>
				</td>
				<td style="vertical-align: top; width: 520px;">Contains <input
					name="State"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">LOCATION<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					name="Location">(Urban, Suburban, Small-City, or -1 if
					Unknown)<br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">CONTROL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					name="Control">(State or Private)<br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">NUMBER OF
					STUDENTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="NumStudents"> and <input name="NumStudents2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT FEMALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentFemale"> and <input name="PercentFemale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="SATVerbal"> and <input name="SATVerbal2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SAT MATH<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="SATMath"> and <input name="SATMath2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">EXPENSES<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="Expenses"> and <input name="Expenses2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT
					FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentAid"> and <input name="PercentAid2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">NUMBER OF
					APPLICANTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="NumApplicants"> and <input name="NumApplicants2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT ADMITTED<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentAdmitted"> and <input name="PercentAdmitted2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT ENROLLED<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="PercentEnrolled"> and <input name="PercentEnrolled2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">ACADEMIC
					SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="AcademicScale"> and <input name="AcademicScale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SOCIAL
					SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="SocialScale"> and <input name="SocialScale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">QUALITY
					SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top; width: 520px;">between <input
					name="QualityScale"> and <input name="QualityScale2"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">EMPHASIS<br>
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
					</table> <br>
				</td>
			</tr>
		</tbody>
	</table>
	<input name="Submit" type="submit">&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
	&nbsp;&nbsp; &nbsp;&nbsp;
	<input name="Reset" type="reset">
	<br>
	<br>
	</form>
	<br>
</body>
</html>

