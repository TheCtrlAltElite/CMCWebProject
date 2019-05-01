<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="verifyLogin.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>EmailSavedSchoolsList</title>
</head>
<body>
	<a href="SavedSchools.jsp">Return to Saved Schools Menu</a>
	<br>
	<br>
	<form method="post" action="EmailSavedSchoolsListAction.jsp" name="EmailSavedSchoolsListAction">
		<big style="font-weight: bold;">Email Saved Schools List</big><br>
		<br> Type in the email that you want the saved schools list sent to:<br> <br>
		<table style="text-align: left; width: 94px; height: 60px;" border="1"
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