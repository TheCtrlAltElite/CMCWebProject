<%@page language="java"%>
<html>
<head>
<title>AddUniversity</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">


<%@include file="verifyLogin.jsp" %>
<div style="text-align: left;"><a href="AdminMenu.jsp">Back to menu</a><br>
	</div>
	
	
<br> Add University form:
	<br>
	<%
			String Error = request.getParameter("Error");
			if (Error != null && Error.equals("-1")) {
				out.println("Please Enter a school name.");
			}
				else if (Error != null && Error.equals("-2")) {
					out.println("School name is already used.");
			}
			%>
	<form method="post" action="AddUniversityAction.jsp" name="addUniversity">
		<br>
	<table align="center" style="text-align: left; width: 570px;" border="10" bordercolor="gray"
		cellpadding="3" cellspacing="0">
		<tbody>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">SCHOOL<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="school"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">STATE<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="state"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">LOCATION<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="location"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">CONTROL<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="control"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">NUMBER OF
					STUDENTS<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="students"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">PERCENT FEMALE (Integer between 0 and 100)<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="females"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="satverbal"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">SAT MATH<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="satmath"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">EXPENSES<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="expenses"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">PERCENT
					FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="financial aid"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">NUMBER OF
					APPLICANTS<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="num applicants"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">PERCENT
					ADMITTED<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="percent admitted"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">PERCENT ENROLLED<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="percent enrolled"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">ACADEMIC SCALE<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="academic scale"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">SOCIAL SCALE<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="social scale"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: top; width: 243px;">QUALITY SCALE<br>
				</td>
				<td style="vertical-align: top; width: 309px;"><input
					name="quality scale"><br></td>
			</tr>
			<tr>
				<td align="center" style="vertical-align: middle; width: 243px;">EMPHASIS<br>
				</td>
				<td style="vertical-align: top; width: 309px;">
					<table style="text-align: left; width: 100%;" border="1"
						cellpadding="2" cellspacing="2">
						<tbody>
							<tr>
								<td style="vertical-align: top;"><input name="emphasis1"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="emphasis2"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="emphasis3"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="emphasis4"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;"><input name="emphasis5"><br>
								</td>
							</tr>
						</tbody>
					</table> <br>
				</td>
			</tr>
		</tbody>
	</table>
	<br>
	<table style="text-align: left; width: 100px; height: 40px;"
		align="center" border="0" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
	<td> <input name="submit" type="submit"></td> 
	<td> <input name="reset" type="reset"></td> 
	</tr>
			</tbody>
			</table>
	<br>
	</form>
	<br>
</body>
</html>
