<%@page language="java" import="AccountFunctionalities.*,java.util.*"%>
<%
	AccountController ac = (AccountController) session.getAttribute("AC");
	if (ac == null || !ac.getCurrentAccount().getLoginStatus()) {
		response.sendRedirect("LoginForm.jsp?Error=-4");
		return;
	}
%>