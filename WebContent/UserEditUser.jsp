<%@ page language="java" import="AccountFunctionalities.*"%>
	<%@include file="verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% Account acc = ac.getCurrentAccount(); 
%>
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
					name="FirstName" value=<%=acc.getFirstName()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Last Name<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="LastName" value=<%=acc.getLastName()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Username<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					readonly="readonly" name="Username" value=<%=acc.getEmail()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Password<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					name="Password" value=<%=acc.getPassword()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Type<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					readonly="readonly" name="Type" value=<%=acc.getType()%>><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 200px;">Status<br>
				</td>
				<td style="vertical-align: top; width: 200px;"><input
					readonly="readonly" name="Status" value=<%=acc.getStatus()%>><br></td>
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