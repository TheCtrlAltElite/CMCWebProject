<%@page language="java" import="AdminFunctionalities.*"
	import="UserFunctionalities.*" import="CMCDatabase.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	AdminInteraction adminI = (AdminInteraction) session.getAttribute("adminI");

	String fname = request.getParameter("FirstName");
	String lname = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");

	boolean bool = false;
	boolean bool2 = false;
	boolean bool3 = true;

	if (type == null || type == "" || password == null || password == "" || username == null || username == ""
			|| lname == null || lname == "" || fname == null || fname == "") {
		response.sendRedirect("AdminAddUser.jsp?Error=-6");
	} 
	else {
		if (type.equals("a") || type.equals("u") || type.equals("A") || type.equals("U")) {
			bool2 = true;
			DBController dbc = new DBController();
			int j = 0;
			int k = 0;
			for (int i = 0; i < dbc.loadUsers().size(); i++) {
				String name = dbc.loadUsers().get(i).getEmail();
				if (name.equals(username)) {
					response.sendRedirect("AdminAddUser.jsp?Error=-3");
					bool = true;
					bool2 = false;
					bool3 = false;
				}
				j = i;
			}
			if (!bool) {
				if (j == dbc.loadUsers().size() - 1) {

					AccountController ac = new AccountController();
					if (ac.passwordRequirements(password)) {
						adminI.addUser(fname, lname, username, password, type);
						response.sendRedirect("ViewAllUsers.jsp");
						bool2 = false;
						bool3 = false;
					}

					else {
						response.sendRedirect("AdminAddUser.jsp?Error=-4");
						bool2 = false;
						bool3 = false;
					}
				}
			} 
		}
		else {
				response.sendRedirect("AdminAddUser.jsp?Error=-5");
			}
		
	}
%>