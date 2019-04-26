<%@ page language="java" import="AdminFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<%
	String username = request.getParameter("Username");
	List<String> details = ai.viewProfile(username);
	boolean change = ai.editProfile(details.get(1), details.get(2), username, details.get(3), details.get(4), "N");
	if(change){
		response.sendRedirect("ViewAllUsers.jsp");
	}
	else {
		response.sendRedirect("ViewAllUsers.jsp?Error=-1");
	}
%>