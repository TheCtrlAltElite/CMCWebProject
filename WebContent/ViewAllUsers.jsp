<%@page language="java"
	import="AdminFunctionalities.*,AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>

<html>
<head>
<title></title>
</head>
<body style="color: rgb(0, 0, 0); background-color: rgb(221, 245, 255);"
	alink="#000099" link="#000099" vlink="#990099">
	<%
		AdminFunctionalityController afc = new AdminFunctionalityController();
	%>
	<div style="text-align: left;">
		<a href="AdminMenu.jsp">Back to menu</a><br> <br>
	</div>
	Hello
	<%
		out.println(ai.getCurrentAccount().getFirstName());
	%>
	<table align="center" style="text-align: left; width: 100%;"
		border="10" bordercolor="gray" border="1" cellpadding="2"
		cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="8" rowspan="1" style="vertical-align: top;"><a
					href="AdminAddUser.jsp">ADD A USER</a></td>

			</tr>
			<tr>
				<td style="vertical-align: top;">Edit</td>
				<td style="vertical-align: top; text-align: center;">Full name
				</td>
				<td style="vertical-align: top; text-align: center;">Username</td>
				<td style="vertical-align: top; text-align: center;">Password</td>
				<td style="vertical-align: top; text-align: center;">Type</td>
				<td style="vertical-align: top; text-align: center;">Status</td>
				<td style="vertical-align: top;">Deactive/Activate</td>
			</tr>


			<%
				for (int i = 0; i < afc.viewUsers().size(); i++) {
			%>
			<tr>
				<td style="vertical-align: top;">
					<form method="post" action="AdminEditUser.jsp" name="Edit">
						<input name="Edit" value="Edit" type="submit"> <input
							name="Username"
							value=<%out.println(afc.viewUsers().get(i).getEmail());%>
							type="hidden">
					</form>
				</td>
				<td style="vertical-align: top;">
					<%
						out.println(afc.viewUsers().get(i).getFirstName() + " " + afc.viewUsers().get(i).getLastName());
					%>
				</td>
				<td style="vertical-align: top;">
					<%
						out.println(afc.viewUsers().get(i).getEmail());
					%>
				</td>
				<td style="vertical-align: top;">
					<%
						out.println(afc.viewUsers().get(i).getPassword());
					%>
				</td>
				<td style="vertical-align: top;">
					<%
						out.println(afc.viewUsers().get(i).getType());
					%>
				</td>
				<td style="vertical-align: top;">
					<%
						out.println(afc.viewUsers().get(i).getStatus());
					%>
				</td>
				<%
					if (afc.viewUsers().get(i).getStatus() == 'y' || afc.viewUsers().get(i).getStatus() == 'Y') {
				%>
				<td style="vertical-align: top;">
					<form method="post" action="DeactivateAction.jsp" name="Deactivate">
						<input name="Deactivate" value="Deactivate" type="submit">
						<input name="Username"
							value=<%out.println(afc.viewUsers().get(i).getEmail());%>
							type="hidden">
					</form>
				</td>
				<%
					} else {
				%>
				<td style="vertical-align: top;">
					<form method="post" action="ActivateAction.jsp" name="Activate">
						<input name="Activate" value="Activate" type="submit"> <input
							name="Username"
							value=<%out.println(afc.viewUsers().get(i).getEmail());%>
							type="hidden">
					</form>
				</td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>
<%
	String Error = request.getParameter("Error");
	if (Error != null && Error.equals("-1")) {
		out.println("Something went wrong while accessing the database.");
	}
%>
