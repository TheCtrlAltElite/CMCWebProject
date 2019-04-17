<%@ page language="java" import="UniversityFunctionalities.*"%>

<html>

<%//University uni = new University(); %>
<%@include file="verifyLogin.jsp" %>

<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>ViewUniversity</title>
</head>
<body>
	<table style="text-align: left; height: 480px; width: 829px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 291px;">SCHOOL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="School Name" value = school><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">STATE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="State" value = State><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">LOCATION<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Location" value = Location><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">CONTROL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Control" value = Control><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">NUMBER OF
					STUDENTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Num Students" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT FEMALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Female" value = ?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="SAT Verbal" value = ?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SAT MATH<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="SAT Math" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">EXPENSES<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Expenses" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT
					FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Aid" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">NUMBER OF
					APPLICANTS<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Num Applicants" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT ADMITTED<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Admitted" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">PERCENT ENROLLED<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Percent Enrolled" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">ACADEMIC SCALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Academic Scale" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">SOCIAL SCALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Social Scale" value =?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 291px;">QUALITY SCALE<br>
				</td>
				<td style="vertical-align: top; width: 520px;"><input
					readonly="readonly" name="Quality Scale" value =?><br></td>
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
									name="Empasis1" value = ?><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Emphasis2" value =?><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Emphasis3" value =?><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Empasis4" value =?><br></td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input readonly="readonly"
									name="Emphasis5" value =?><br></td>
							</tr>
						</tbody>
					</table> <br>
				</td>
			</tr>
		</tbody>
	</table>
	<br>
</body>
</html>
