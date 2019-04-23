<%@ page language="java" import="AccountFunctionalities.*"%>
<%AccountController AC = (AccountController) session.getAttribute("ac"); %>
<%@include file="verifyLogin.jsp" %>
<html>
<head>
<title>Menu</title>
</head>
<body>
Welcome Admin: <%AC.getCurrentAccount().getEmail(); %><br>
<br>
<br>
<a href="ViewUsers.jsp">Manage Users</a><br>
<a href="ViewUniversities.jsp">Manage Universities</a><br>
</body>
</html>