<%@ page language="java" import="UserFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	UserInteraction ui = new UserInteraction();

	String username = ai.getCurrentAccount().getEmail();
	String firstName = ai.getCurrentAccount().getFirstName();
	String email = request.getParameter("EmailInput");

	boolean result = ui.emailSavedSchools(username, firstName, email);

if(result) {
	response.sendRedirect("SavedSchools.jsp?Status=0");
}
else {
	response.sendRedirect("EmailSavedSchoolsList.jsp?Status=-1");
}

%>