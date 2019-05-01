<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>AdminAddUser</title>
</head>

<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<a href="ViewAllUsers.jsp">Back to All Users</a>
	<form method="post" action="addAction.jsp" name="AdminAddUser">
	Add User Form:
	<br>
	<br>
	<table align="center" style="text-align: left; width: 418px;" border="10"
		bordercolor="grey" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 200px;">First Name<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="FirstName"></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Last Name<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="LastName"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Username<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="Username"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Password<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="Password"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Type<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="Type"><br></td>
			</tr>
		</tbody>
	</table>
	<table style="text-align: left; width: 100px; height: 40px;"
			align="center" border="0" cellpadding="1" cellspacing="1">
			<tbody>
				<tr>
					<td><input value="Add User" name="AddUser" type="submit"></td>
					<td><input name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
	</form>
	<br>
	
	<%
			String Error = request.getParameter("Error");
			if (Error != null && Error.equals("-3")) {
				out.println("Username already exists in database, please use a different username.");
			} 
			else if (Error != null && Error.equals("-4")) {
				out.println("Password does not meet requirements, please enter a password of length 10 or greater that contains: at least 1 capital letter, 1 lowercase letter, and 1 number.");
			}
			else if (Error != null && Error.equals("-5")) {
				out.println("Type invalid. Please give type 'u' user or 'a' admin.");
			}
			else if (Error != null && Error.equals("-6")) {
				out.println("Please make sure all fields are filled in.");
			}
			%>
</body>
</html>