<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>UserEditUser</title>
</head>
<body>
	<a href="UserMenu.jsp">Back to menu</a>
	<br>
	<br>
	<table style="text-align: left; width: 418px;" border="1"
		cellpadding="2" cellspacing="2">
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
					readonly="readonly" name="Username"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Password<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="Password"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Status<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					readonly="readonly" name="Status"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Type<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					readonly="readonly" name="Type"><br></td>
			</tr>
		</tbody>
	</table>
	<br>
	<input value="Edit User" name="EditUser" type="submit">&nbsp;&nbsp;&nbsp;
	<input name="Reset" type="reset">
	<br>
	<br>
</body>
</html>