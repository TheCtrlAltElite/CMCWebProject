<%@ page language="java"
	import="UserFunctionalities.*, AccountFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	UserInteraction UI = new UserInteraction();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SavedSchoolsList</title>
</head>
<body>
	<div style="text-align: left;"><a href="UserMenu.jsp">Back to menu</a>
	<br>
	<br>
	</div>
	<table style="text-align: center; width: 800px; height: 108px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<%
				Account acc = ai.getCurrentAccount();
				Map<String, String> savedSchools = UI.viewSavedSchools(acc.getEmail());
				for (Map.Entry entry : savedSchools.entrySet()) {
			%>
			<tr>
				<td style="vertical-align: top; width: 100px;">				
				<form method="post" action="RemoveFromSavedSchoolsAction.jsp" name="Remove">
						<input name="Remove" value="Remove" type="submit"> <input
							name="UniName"
							value="<%=entry.getKey()%>"
							type="hidden">
					</form></td>
				<td style="vertical-align: top; width: 600px;">
					<%
						out.println(entry.getKey() + " (added on: " + entry.getValue() + ")");
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
				<form method="post" action="ViewUniversity.jsp" name="View">
						<input name="View" value="View" type="submit"> <input
							name="UniName"
							value="<%=entry.getKey()%>"
							type="hidden">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
		<form method="post" action="EmailSavedSchoolsList.jsp" name="Email">
						<input name="Email" value="Email Saved Schools List" type="submit"> 
					</form>
	<%
	String status = request.getParameter("Status");
	if(status != null && status.equals("0")) {
		out.println("Email was sent with your saved schools list. Please check your email.");
	}
	%>
</body>
</html>