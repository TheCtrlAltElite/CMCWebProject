<%@page language="java" import="AdminFunctionalities.*" import="UserFunctionalities.*" import="CMCDatabase.*"%>
<%@include file="verifyLogin.jsp" %>
<%
	AdminInteraction adminI = (AdminInteraction)session.getAttribute("adminI");

	String fname = request.getParameter("FirstName");
	String lname = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");
	
	
	DBController dbc = new DBController();
	int j = 0;
    for(int i = 0; i < dbc.loadUsers().size() ; i++) {
    	String name = dbc.loadUsers().get(i).getEmail();
    	if (name.equals(username)){
    			response.sendRedirect("AdminAddUser.jsp?Error=-3");	
    	}
    	j = i;
    }
    
    
    if(j == dbc.loadUsers().size()-1){
    	
    
    AccountController ac = new AccountController();
    if(ac.passwordRequirements(password)){
    	adminI.addUser(fname, lname, username, password, type);
    	response.sendRedirect("ViewAllUsers.jsp");
    }
    
    else {
    	response.sendRedirect("AdminAddUser.jsp?Error=-4");
    }
    }
%>