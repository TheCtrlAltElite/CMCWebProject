<%@ page language="java" contentType="text/html; charset=UTF-8"%>

    <%pageEncoding="UTF-8";%>
    <%@include file="verifyLogin.jsp"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>viewUser</title>
</head>
<body>
	<table style="text-align: left; width: 620px;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top; width: 278px;">FIRST NAME<br>
				</td>
				<td style="vertical-align: top; width: 324px;"><input
					readonly="readonly" name="FirstName" value=?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 278px;">LAST NAME<br>
				</td>
				<td style="vertical-align: top; width: 324px;"><input
					readonly="readonly" name="Last Name" value=?><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 278px;">USERNAME<br>
				</td>
				<td style="vertical-align: top; width: 324px;"><input
					readonly="readonly" name="Username" value=?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 278px;">PASSWORD<br>
				</td>
				<td style="vertical-align: top; width: 324px;"><input
					readonly="readonly" name="Password" value=?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 278px;">TYPE<br>
				</td>
				<td style="vertical-align: top; width: 324px;"><input
					readonly="readonly" name="Type" value=?><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 278px;">STATUS<br>
				</td>
				<td style="vertical-align: top; width: 324px;"><input
					readonly="readonly" name="Status" value=?><br></td>
			</tr>
		</tbody>
	</table>
	<br>
</body>
</html>