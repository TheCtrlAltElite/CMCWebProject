<%@page language="java" import="AdminFunctionalities.*"%>
	
<%
	AdminFunctionalityController af = new AdminFunctionalityController();

	session.setAttribute("AFC", af);

	response.sendRedirect("ViewAllUniversities.jsp");

%>