<%@page language="java" import="AdminFunctionalities.*"%>
<html>
<head>
<title>UniTable</title>
</head>
<body>
	<% 	
	AdminFunctionalityController afc = new AdminFunctionalityController();

	//session.setAttribute("AFC", afc);
	
	//AdminFunctionalityController afc = (AdminFunctionalityController)session.getAttribute("AFC");
	
	
%>
	<br>
	<table style="text-align: left; width: 1623px; height: 108px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td colspan="17"
					style="vertical-align: top; width: 23px; text-align: center;"><a
					href="AdminAddUniversity.jsp">Add a New University</a><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top; width: 130px; text-align: center;">School<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">State<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Location<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Control<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">#
					of Students<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					Females<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">SAT
					Verbal<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">SAT
					Math<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Expenses<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					With Financial Aid<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">#
					of Applicants<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					Admitted<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">%
					Enrolled<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Academics
					Scale<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Social
					Scale<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;">Quality
					of Life Scale<br>
				</td>
				<td style="vertical-align: top; width: 130px; text-align: center;"><br>
				</td>
			</tr>
			<% for(int i = 0 ; i <afc.viewUniversities().size(); i++ ){

%>
			<tr>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;">100<br>
				</td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; width: 100px;"><br></td>
				<td style="vertical-align: top; text-align: center;"><a
					href="AdminEditUniversity.jsp"><button value="Edit" name="Edit">Edit</button>
						<br> </a></td>
			</tr>
			
			<%}%>
		</tbody>
	</table>
	<br>

	<br>
	<br>
</body>
</html>
