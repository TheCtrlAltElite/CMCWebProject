<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	String uname = request.getParameter("Username");
	String fName = request.getParameter("FirstName");
	String lName = request.getParameter("LastName");
	String pass = request.getParameter("Password");
	String stat = request.getParameter("Status");
	String type = request.getParameter("Type");

	ai.editProfile(fName, lName, uname, pass, type, stat);
	response.sendRedirect("ViewAllUsers.jsp");
%>