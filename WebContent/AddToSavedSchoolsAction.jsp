<%@ page language="java" import="UserFunctionalities.*"%> 
<%@include file="verifyLogin.jsp" %>
<% 
	UserInteraction ui = new UserInteraction();
	Account acc = ai.getCurrentAccount();

	String username = acc.getEmail();
	String schoolName = request.getParameter("UniName");

	ui.addToSavedSchoolsList4(username, schoolName);
	
	response.sendRedirect("SavedSchools.jsp");

%>