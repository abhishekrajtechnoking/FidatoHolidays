<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="../jdbc/connection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<%
	String mbl="";
	String email="";
	if(session.getAttribute("mob")==null||session.getAttribute("mob")==""||session.getAttribute("email")==null||session.getAttribute("email")=="" ){
		response.sendRedirect("log_reg.jsp");
		
	}	
	else{
		mbl=session.getAttribute("mob").toString();
		email=session.getAttribute("email").toString();
	}
		PreparedStatement ps=con.prepareStatement("SELECT * FROM FID_REG WHERE MOBILE='"+mbl+"' OR EMAIL='"+email+"'");
		ResultSet rs=ps.executeQuery();
		
	%>
	
	<table border="1">
		<tr>
			<td>Title</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Age</td>
			<td>Gender</td>
			<td>Mobile</td>
			<td>Email</td>
		</tr>
		
			<%
			if(rs.next()==true){
		%>
		<tr>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("first_name") %></td>
			<td><%=rs.getString("last_name") %></td>
			<td><%=rs.getString("dob") %></td>
			<td><%=rs.getString("gender") %></td>
			<td><%=rs.getString("mobile") %></td>
			<td><%=rs.getString("email") %></td>
		</tr>
		<% } %>
		<a href="logout.jsp">Logout</a>
	</table>
</body>
</html>