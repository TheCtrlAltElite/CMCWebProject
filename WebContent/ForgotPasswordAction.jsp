<%@ page language="java" import="AccountFunctionalities.*"%>
<%
	AccountInteraction ai = new AccountInteraction();
	String email = request.getParameter("UsernameInput");

	int result = ai.recoverPassword(email);

	if(result==0) {
		response.sendRedirect("ForgotPassword.jsp?Status=0");
	}
	else if(result==-1){
		response.sendRedirect("ForgotPassword.jsp?Status=-1");
	}
	else if(result==-2){
		response.sendRedirect("ForgotPassword.jsp?Status=-2");
	}

%>