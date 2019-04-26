<%@page language="java"%>
<html>
<head>
<title>Login Form</title>
</head>
<body>
	Login form:
	<br>
	<br>
	<form method="post" action="loginAction.jsp" name="Login">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password">
					</td>
				</tr>

				<td style="vertical-align: top;"><input value="Log in"
					name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<a href="ForgotPassword.jsp"> Forgot Password? </a><br>
	</form>
	<br>
	<%
	String Error = request.getParameter("Error");
	if (Error != null && Error.equals("-1")) {
		out.println("Provided user is deactivated.");
	} else if (Error != null && Error.equals("-2")) {
		out.println("Provided password is not valid. ");
	} else if (Error != null && Error.equals("-3")) {
		out.println("Provided username is not valid.");
	} else if (Error != null && Error.equals("-4")) {
		out.println("Please sign in to access system pages.");
	} else if (Error != null && Error.equals("-5")) {
		out.println("Error while trying to access database.");
	} 
	%>
</body>
</html>