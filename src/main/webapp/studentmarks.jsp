<%@page import="modals.studentmarks"%>
<%@page import="services.studentmarkservice"%>
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
<style type="text/css">
 @import url('https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=Pacifico&family=Protest+Revolution&family=Roboto:wght@400;500;700;900&display=swap');
body{
    background-image: url('https://i.pinimg.com/originals/22/a5/a7/22a5a7b9dbc0e29ccef006dea5981367.png');
    width: 100%;
   height: 100vh; 
    background-repeat: no-repeat;
    background-size: cover;
    
    margin: 0;
    padding: 0;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  font-weight: 600;
  font-size: 2.3vh;
}

tr:hover {background-color: rgba(0, 0, 0, 0.639);
color: #fff;}
h1{
    font-family: "Dancing Script", cursive;
    font-weight: 700;
    font-optical-sizing: auto;
    font-style: normal;
    font-size: 15vh;
    text-align: center;
    padding-top: 20px;
}
</style>
</head>
<body>
<h1>Student Details</h1>
	<table border="1" >
		<thead>
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Telugu</td>
				<td>English</td>
				<td>Hindi</td>
				<td>Maths</td>
				<td>Science</td>
				<td>Social</td>
				<td> update</td>
				<td> Delete</td>
			</tr>
		</thead>


		<tbody>
			<%
			studentmarkservice service = new studentmarkservice(logindb.getconnection());
			List<studentmarks> l = service.getall();
			for (studentmarks s : l) {
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getTelugu()%></td>
				<td><%=s.getEnglish()%></td>
				<td><%=s.getHindi()%></td>
				<td><%=s.getMaths()%></td>
				<td><%=s.getScience()%></td>
				<td><%=s.getSocial()%></td>
				
				<td>
					<button class="btn btn-outline-primary">update</button>
				</td>
				<td><a href="deletebyid?id=<%=s.getId()%>"><button class="btn btn-outline-danger">delete</button></a></td>
				
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>