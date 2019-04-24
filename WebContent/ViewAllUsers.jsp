<%@page language="java"
	import="AdminFunctionalities.*,AccountFunctionalities.*"%>


<html>
<head>
<title></title>
</head>
<body>
	<%
		AdminFunctionalityController afc = new AdminFunctionalityController();
	%>
	<%@include file="verifyLogin.jsp"%>
	Hello User
	<%
		out.println(ac.getCurrentAccount().getEmail());
	%>
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
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
				<td style="vertical-align: top;">Delete</td>
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
				<td style="vertical-align: top;">
					<form method="post" action="Delete.jsp" name="Delete">
						<input name="Delete" value="Delete" type="submit"> <input
							name="Username"
							value=<% out.println(afc.viewUsers().get(i).getEmail()); %>
							type="hidden">
					</form>
				</td>
			</tr>
			<%
}
%>
		</tbody>
	</table>
</body>
</html>