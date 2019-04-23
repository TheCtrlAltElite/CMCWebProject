<%@ page language="java" import="AccountFunctionalities.*"%>
<%AccountInteraction ac = (AccountInteraction)session.getAttribute("ac");%>
<%-- <%@include file="verifyLogin.jsp" %> --%>
<html>
<head>
<title>Menu</title>
</head>
<body>
Welcome User: <%ac.getCurrentAccount().getEmail(); %><br>
<br>
<br>
<a href="UserEditUser.jsp">Manage My Profile</a><br>
<a href="SavedSchools.jsp">Manage My Saved Schools</a><br>
<a href="SearchUniversities.jsp">Search Universities</a><br>
</body>
</html>