<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String username = ai.getCurrentAccount().getEmail();
	List<String> acc = ai.viewProfile(username);
%>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>UserEditUser</title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<form method="post" action="UserEditUserAction.jsp" name="UserEditUser">
		<a href="UserMenu.jsp">Back to menu</a> <br> <br>
		<table align="center" style="text-align: left; width: 418px;"
			border="10" bordercolor="gray" border="1" cellpadding="2"
			cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top; width: 200px;">First Name<br>
					</td>
					<td style="vertical-align: top; width: 200px;"><input
						name="FirstName" value=<%=acc.get(1)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 200px;">Last Name<br>
					</td>
					<td style="vertical-align: top; width: 200px;"><input
						name="LastName" value=<%=acc.get(2)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 200px;">Username<br>
					</td>
					<td style="vertical-align: top; width: 200px;"><input
						readonly="readonly" name="Username" value=<%=acc.get(0)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 200px;">Password<br>
					</td>
					<td style="vertical-align: top; width: 200px;"><input
						name="Password" value=<%=acc.get(3)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 200px;">Type<br>
					</td>
					<td style="vertical-align: top; width: 200px;"><input
						readonly="readonly" name="Type" value=<%=acc.get(4)%>><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 200px;">Status<br>
					</td>
					<td style="vertical-align: top; width: 200px;"><input
						readonly="readonly" name="Status" value=<%=acc.get(5)%>><br></td>
				</tr>
			</tbody>
		</table>
		<table style="text-align: left; width: 100px; height: 40px;"
			align="center" border="0" cellpadding="1" cellspacing="1">
			<tbody>
				<tr>
					<td><input value="Edit User" name="EditUser" type="submit"></td>
					<td><input name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
	</form>
	<br>
</body>
</html>