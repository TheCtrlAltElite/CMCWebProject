<%@page language="java" import="AccountFunctionalities.*"%>

<%
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	
	AccountController ac = new AccountController();
	
	int loginStatus = ac.login(username, password);

	if (loginStatus == 0) {
		session.setAttribute("sessionVariable", ac);
		response.sendRedirect("AdminMenu.jsp");
	} else if(loginStatus == 1) {
		session.setAttribute("sessionVariable", ac);
		response.sendRedirect("UserMenu.jsp");
	} else if (loginStatus == -1) {
		response.sendRedirect("LoginForm.jsp?Error=-1");
	} else if (loginStatus == -2) {
		response.sendRedirect("LoginForm.jsp?Error=-2");
	} else if (loginStatus == -3 ){
		response.sendRedirect("LoginForm.jsp?Error=-3");
	} else if (loginStatus == -5 ){
		response.sendRedirect("LoginForm.jsp?Error=-5");
	}
%>
