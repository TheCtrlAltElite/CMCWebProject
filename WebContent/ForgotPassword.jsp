<%@ page language="java"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>PasswordRecovery</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<bodystyle ="color: rgb(0,="" 0,="" 0);="" background-color:=""
		rgb(221,="" 245,="" 255);="" alink="#000099" link="#000099"
		vlink="#990099"> </bodystyle="color:>
	<form method="post" action="ForgotPasswordAction.jsp"
		name="RecoverPasswordForm">
		<div style="text-align: center;">
			<big style="font-weight: bold;"><br> <big>Password
					Recovery</big></big><br>
		</div>
		<div style="text-align: center;">
			Type in the username of the account that you want the password reset
			for:<br>
		</div>
		<br>
		<table style="text-align: left; width: 94px; height: 60px;"
			align="center" border="10" cellpadding="2" cellspacing="2">
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
		<br> <br>
		<div style="text-align: center;">
			<a href="LoginForm.jsp">Return to sign-in page</a> <br>
		</div>
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