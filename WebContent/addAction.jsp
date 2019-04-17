<%@page language="java" import="AdminFunctionalities.*" import="UserFunctionalities.*"%>
<%
	AdminFunctionalityController afc = (AdminFunctionalityController)session.getAttribute("sessionVariable");

	String fname = request.getParameter("FirstName");
	String lname = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	char type = request.getParameter("Type").charAt(0);
	
	afc.addUser(fname, lname, username, password, type);
	response.sendRedirect("AdminMenu.jsp");
	
%>