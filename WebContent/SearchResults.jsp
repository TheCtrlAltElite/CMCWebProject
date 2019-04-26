<%@ page language="java"
	import="UserFunctionalities.*, UniversityFunctionalities.*"%>
<%@include file="verifyLogin.jsp"%>

<%
	UserInteraction UI = new UserInteraction();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SearchResults</title>
</head>
<body>
	<table style="text-align: center; width: 800px; height: 108px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<%
				String[] uniNames =  request.getParameterValues("listUnis");
				for (int i = 0; i < uniNames.length; i++) {
					
			%>
			<tr>
				<td style="vertical-align: top; width: 100px;"><a
					href="RemoveFromSavedSchoolsAction.jsp"><button value="Remove"
							name="Remove" >Remove</button></a></td>
				<td style="vertical-align: top; width: 600px;">
					<%
						out.println(uniNames[i]);
					%><br>
				</td>
				<td style="vertical-align: top; width: 100px;"><a
					href="ViewUniversity.jsp"><button value="View" name="View">View</button></a>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>