<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="verifyLogin.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>EmailSavedSchoolsList</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<a href="SavedSchools.jsp">Return to Saved Schools Menu</a>
	<br>
	<br>
	<form method="post" action="EmailSavedSchoolsListAction.jsp" name="EmailSavedSchoolsListAction">
	<div style="text-align: center;">
		<big style="font-weight: bold;">Email Saved Schools List</big></div><br>
		<div style="text-align: center;"> Type in the email that you want the saved schools list sent to: </div><br> <br>
		<table align="center" style="text-align: left; width: 94px; height: 60px;" border="10"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Email<br>
					</td>
					<td style="vertical-align: top;"><input name="EmailInput"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input name="Submit"
						type="submit"><br></td>
					<td style="vertical-align: top; text-align: center;"><input
						name="Reset" type="reset"><br></td>
				</tr>
			</tbody>
		</table>
		<br>
		<br>
		<br>
	</form>
	<%
	String status = request.getParameter("Status");
	if (status != null && status.equals("-1")) {
		out.println("The email does not exist.");
	}
	%>
</body>
</html>