<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file="LogoutButton.jsp"%>
<html>
<head>
<title>Menu</title>
</head>
<body>
	Welcome Admin:
	<%
	out.println(ac.getCurrentAccount().getEmail());
	%>
	<br>
	<br>
	<a href="ViewAllUsers.jsp">Manage Users</a>
	<br>
	<a href="ViewAllUniversities.jsp">Manage Universities</a>
	<br>
</body>
</html>