<%@page language="java" import="AccountFunctionalities.*"%>

<%
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	AccountController ac = new AccountController();
	int status = ac.login(u, p);

	if (status == 0) {
		
		session.setAttribute("AC", ac);
		
		response.sendRedirect("AdminMenu.jsp");

	}
	else if(status == 1) {
		session.setAttribute("AC", ac);
		response.sendRedirect("UserMenu.jsp");
	}
	else if (status == -1) {
		response.sendRedirect("LoginForm.jsp?Error=-1&AnotherParam=status");
	}

	else if (status == -2) {
		response.sendRedirect("LoginForm.jsp?Error=-2&AnotherParam=status");
	}

	else if (status == -3 ){
		response.sendRedirect("LoginForm.jsp?Error=-3&AnotherParam=status");
	}
%>
