<%@page language="java" import="AdminFunctionalities.*" import="UserFunctionalities.*"%>
<%
	AdminInteraction afc = (AdminInteraction)session.getAttribute("sessionVariable");

	String fname = request.getParameter("FirstName");
	String lname = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");
	
	afc.addUser(fname, lname, username, password, type);
	response.sendRedirect("AdminMenu.jsp");
	
%>