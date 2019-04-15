<%@ page language="java" import="AccountFunctionalities.*"%>
<%AccountController AC = (AccountController) session.getAttribute("AC"); %>
<html>
<head>
<title>Menu</title>
</head>
<body>
Welcome Admin: <%AC.getCurrentAccount().getEmail(); %><br>
<br>
<br>
Manage Users<br>
Manage Universities<br>
</body>
</html>