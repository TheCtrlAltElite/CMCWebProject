<html>
<head>
<title>Login Form</title>
</head>
<body>
	<div style="text-align: center;">
		Welcome to the Choose My College Database System!<br> Please sign
		in below to get started.<br>
		<table style="text-align: left; width: 100px;" align="center"
			border="0" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;"><img
						style="width: 369px; height: 399px;" alt="CMCLogo"
						src="images/CMC_Logo.png">
					</td>
					<td style="vertical-align: top;"><br> <br> <br>
						<form method="post" action="loginAction.jsp" name="Login">
							<table style="text-align: left; width: 268px; height: 189px;"
								align="center" border="1" cellpadding="2" cellspacing="2">
								<tbody>
									<tr>
										<td style="vertical-align: middle; text-align: center;">Username<br>
										</td>
										<td style="vertical-align: middle;"><input name="Username">
										</td>
									</tr>
									<tr>
										<td style="vertical-align: middle;">Password<br>
										</td>
										<td style="vertical-align: middle;"><input type="Password" name="Password">
										</td>
									</tr>
									<tr>
										<td style="vertical-align: middle; text-align: center;"><input
											value="Log in" name="Log in" type="submit"></td>
										<td style="vertical-align: middle; text-align: center;"><input
											value="Reset" name="Reset" type="reset"></td>
									</tr>
								</tbody>
							</table>
							<div style="text-align: center;">
							<br>
								<a href="ForgotPassword.jsp">Forgot Password? </a><br>
							</div>
						</form></td>
				</tr>
			</tbody>
		</table>
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