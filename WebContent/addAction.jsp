<%@page language="java" import="AdminFunctionalities.*" import="UserFunctionalities.*"%>\
<%@include file="verifyLogin.jsp" %>
<%
	AdminInteraction adminI = (AdminInteraction)session.getAttribute("adminI");

	String fname = request.getParameter("FirstName");
	String lname = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");
	System.out.println(fname + " " + lname + " " + username + " " + password + " " + type);
	
	adminI.addUser(fname, lname, username, password, type);
	response.sendRedirect("ViewAllUsers.jsp");
%>