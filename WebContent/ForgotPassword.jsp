<%@ page language="java"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>PasswordRecovery</title>
</head>
<body>
	<form method="post" action="ForgotPasswordAction.jsp" name="RecoverPasswordForm">
		<big style="font-weight: bold;">Password Recovery</big><br> <br>
		<br> Type in the username of the account that you want the
		password reset for:<br> <br>
		<table style="text-align: left; width: 94px; height: 60px;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="UsernameInput"><br>
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
		<a href="LoginForm.jsp">Return to sign-in page</a>
		<br>
	</form>
	<%
	String status = request.getParameter("Status");
	if(status != null && status.equals("0")) {
		out.println("Email was sent with your new password. Please check your email.");
	}
		else if (status != null && status.equals("-1")) {
		out.println("Username is not valid.");
	}
	  	else if (status != null && status.equals("-2")) {
		out.println("The username does not have an email associated with the account. Please contact cmcdatabase2019@gmail.com for assistance.");
	} 
	%>
</body>
</html>