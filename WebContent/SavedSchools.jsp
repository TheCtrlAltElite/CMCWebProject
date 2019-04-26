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
	<table style="text-align: center; width: 800px; height: 108px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<%
				Account acc = ai.getCurrentAccount();
				Map<String, String> savedSchools = UI.viewSavedSchools(acc.getEmail());
				for (Map.Entry entry : savedSchools.entrySet()) {
			%>
			<tr>
				<td style="vertical-align: top; width: 100px;"><a
					href="RemoveFromSavedSchoolsAction.jsp"><button value="Remove"
							name="Remove" >Remove</button></a></td>
				<td style="vertical-align: top; width: 600px;">
					<%
						out.println(entry.getKey() + " (added on: " + entry.getValue() + ")");
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;">
				<form method="post" action="ViewUniversity.jsp" name="Edit">
						<input name="Edit" value="Edit" type="submit"> <input
							name="UniName"
							value=<%out.println(entry.getKey());%>
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