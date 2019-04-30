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
		<big><big><br> Welcome User:
				<%=ai.getCurrentAccount().getEmail()%></big></big><br>
	</div>
	<br>
	<br>
	<br>
	<br>
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
					src="file:///home/rclintsma001/Pictures/Profile-ICon.png"><br>
				</td>
				<td style="vertical-align: top; text-align: center;"><img
					style="width: 98px; height: 98px;" alt="SavedSchoolsIocn"
					src="file:///home/rclintsma001/Pictures/school+icon.png"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; text-align: center;"><a
					href="UserEditUser.jsp">Manage My Profile</a></td>
				<td style="vertical-align: top; text-align: center;"><a
					href="SavedSchools.jsp">Manage My Saved Schools</a></td>
			</tr>
		</tbody>
	</table>
	<table style="text-align: left; width: 362px; height: 147px;"
		align="center" border="0" cellpadding="1" cellspacing="1">
		<tbody>
			<tr>
				<td style="vertical-align: top; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img style="width: 117px; height: 109px;" alt="SearchIcon"
					src="file:///home/rclintsma001/Pictures/9228f03f9d.png"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="schoolSearch.jsp">Search Universities</a>
				</td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
</body>
</html>