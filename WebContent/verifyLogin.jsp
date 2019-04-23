<%@page language="java" import="AccountFunctionalities.*,java.util.*"%>
<%
	AccountInteraction ac = (AccountInteraction) session.getAttribute("ac");
	if (ac == null || !ac.getCurrentAccount().getLoginStatus()) {
		response.sendRedirect("LoginForm.jsp?Error=-4");
		return;
	}
%>