<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<%
	AccountInteraction AC = (AccountInteraction) session.getAttribute("ac");
	String uname = request.getParameter("Username");
	String fName = request.getParameter("FirstName");
	String lName = request.getParameter("LastName");
	String pass = request.getParameter("Password");
	String stat = request.getParameter("Status");
	String type = request.getParameter("Type");
	System.out.println(uname + " " + fName + " " + lName + " " + pass + " " + stat + " " + type);
	
	boolean change = AC.editProfile(fName, lName, uname, pass, type, stat);
	if(change){
		response.sendRedirect("ViewAllUsers.jsp");
	}
	else {
		response.sendRedirect("ViewAllUsers.jsp?Error=-1");
	}
%>