<%@page language="java" import="AccountFunctionalities.*,java.util.*"%>
<%
	AccountInteraction ai = (AccountInteraction) session.getAttribute("ac");
	if (ai == null || !ai.getCurrentAccount().getLoginStatus()) {
		response.sendRedirect("LoginForm.jsp?Error=-4");
		return;
	}
%>