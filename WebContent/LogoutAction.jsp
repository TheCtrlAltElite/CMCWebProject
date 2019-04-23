<%@ page language="java" import="AccountFunctionalities.*"%>

<%
AccountInteraction ac = (AccountInteraction) session.getAttribute("ac");	
ac.logOut();
response.sendRedirect("LoginForm.jsp");
%>
    