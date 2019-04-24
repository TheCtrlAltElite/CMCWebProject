<%@page language="java" import="AdminFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<%
	AdminFunctionalityController af = new AdminFunctionalityController();

	session.setAttribute("AFC", af);

	response.sendRedirect("ViewAllUniversities.jsp");

%>