<%@ page language="java" import="AccountFunctionalities.*" %>
<%@include file="verifyLogin.jsp"%>
<%@include file="LogoutButton.jsp"%>
<% AccountController ac = new AccountController(); %>
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
<br>
<br>
<a href="ViewAllUsers.jsp">Manage Users</a><br>
<a href="ViewAllUniversities.jsp">Manage Universities</a><br>
>>>>>>> 97884c19cd49899d83e5a83136ca0f98b1b5e9ca
</body>
</html>