<%@page language="java" import="AdminFunctionalities.*,java.util.*"%>

<%@include file="verifyLogin.jsp" %>

<%

AdminInteraction adminI = new AdminInteraction();

adminI.removeUniversityDB(request.getParameter("University"));

out.println("Deleteted University: " + request.getParameter("University"));

response.sendRedirect("ViewAllUniversities.jsp");


%>