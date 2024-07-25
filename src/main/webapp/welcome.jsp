<%@page import="modals.login"%>
<%@page import="java.util.List"%>
<%@page import="dbconnections.logindb"%>
<%@page import="services.loginservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="bootstrap.jsp" %>
</head>
<body>
	<table border="1" >
		<thead>
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Email</td>
				<td>Password</td>
				<td>Confirm password</td>
				<td>update</td>
				<td>Deletebyid</td>
				<td>Deletebyemail</td>
			</tr>
		</thead>


		<tbody>
			<%
			loginservice service = new loginservice(logindb.getconnection());
			List<login> l = service.getall();
			for (login s : l) {
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getEmail()%></td>
				<td><%=s.getPassword()%></td>
				<td><%=s.getConfirmpassword()%></td>
				<td>
					<button class="btn btn-primary">update</button>
				</td>
				<td><a href="delete?id=<%=s.getId()%>"><button class="btn btn-danger">deletebyid</button></a></td>
				<td><a href="delete?id=<%=s.getId()%>"><button>deletebyemail</button></a></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>