<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<%@include file="LogoutButton.jsp" %>
<html>
<head>
<title>Menu</title>
</head>
<body>
Welcome User: <%=ai.getCurrentAccount().getEmail()%><br>
<br>
<br>
<a href="UserEditUser.jsp">Manage My Profile</a><br>
<a href="SavedSchools.jsp">Manage My Saved Schools</a><br>
<a href="SearchUniversities.jsp">Search Universities</a><br>
</body>
</html>