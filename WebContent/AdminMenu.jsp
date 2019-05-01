<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file="LogoutButton.jsp"%>
<html>
<head>
<title>Menu</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<div style="text-align: center;">
		<big><big><br> Welcome Admin: <%=ai.getCurrentAccount().getEmail()%><br>
	</div>
	<br>
	<br>
	<br>
	<br>
	<table style="text-align: left; width: 449px; height: 161px;"
		align="center" border="0" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
				<td style="vertical-align: top; text-align: center;"><img
					style="width: 103px; height: 103px;" alt="IconProfile"
					src="images/Profile-ICon.png"><br>
				</td>
				<td style="vertical-align: top; text-align: center;"><img
					style="width: 98px; height: 98px;" alt="SavedSchoolsIocn"
					src="images/school+icon.png"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; text-align: center;"><a
					href="ViewAllUsers.jsp">Manage Users</a></td>
				<td style="vertical-align: top; text-align: center;"><a
					href="ViewAllUniversities.jsp">Manage Universities</a></td>
			</tr>
		</tbody>
	</table>
	<table style="text-align: left; width: 362px; height: 147px;"
		align="center" border="0" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
				<td style="vertical-align: top; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img style="width: 117px; height: 109px;" alt="SearchIcon"
					src="images/9228f03f9d.png"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="AdminSearchSchools.jsp">Quick University Search</a>
				</td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
</body>
</html>
