<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	String uname = request.getParameter("Username");
	String fName = request.getParameter("FirstName");
	String lName = request.getParameter("LastName");
	String pass = request.getParameter("Password");
	String stat = request.getParameter("Status");
	String type = request.getParameter("Type");
	
	if(type.equals("a") || type.equals("u") || type.equals("A") || type.equals("U")) {
		if(stat.equals("y") || stat.equals("n") || stat.equals("Y") || stat.equals("N")){
			ai.editProfile(fName, lName, uname, pass, type, stat);
			response.sendRedirect("ViewAllUsers.jsp");
		}
		else{
			response.sendRedirect("ViewAllUsers.jsp?Error=-3");
		}
	}
	else{
		response.sendRedirect("ViewAllUsers.jsp?Error=-4");
	}
	
%>