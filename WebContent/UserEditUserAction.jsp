<%@ page language="java" import="AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp" %>
<%
	AccountController AC = (AccountController) session.getAttribute("AC");
	String uname = request.getParameter("Username");
	String fName = request.getParameter("FirstName");
	String lName = request.getParameter("LastName");
	String pass = request.getParameter("Password");
	String stat = request.getParameter("Status");
	String type = request.getParameter("Type");
	boolean change = AC.editProfile(fName, lName, uname, pass, type.charAt(0), stat.charAt(0));
	if(change){
		response.sendRedirect("UserMenu.jsp");
	}
	response.sendRedirect("UserMenu.jsp?Error=-1");
%>