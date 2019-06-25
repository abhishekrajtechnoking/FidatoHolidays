<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="register.jsp" method="post">
	
	<%
		String mob=(String)session.getAttribute("MobSes");
	System.out.println("usrReg.... "+mob);
	%>
		<table>
			<tr>
				<th>Title</th>
				<td>
				<select name="title">
					
					<option>Mr</option>
					<option>Mrs</option>
					<option>Miss</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<th>First Name</th>
				<td><input type="text" name="fname"></td>
			</tr>
			
			<tr>
				<th>Last Name</th>
				<td><input type="text" name="lname"></td>
			</tr>
			
			<tr>
				<th>Age</th>
				<td><input type="text" name="age"></td>
			</tr>
			
			<tr>
				<th>Gender</th>
				<td><input type="text" name="gender"></td>
			</tr>
			
			<tr>
				<th>Mobile Number</th>
				<td><input type="text" name="mobile4" value="<%=mob%>" readonly="readonly"></td>
			</tr>
			
			<tr>
				<th>Email</th>
				<td><input type="text" name="mail"></td>
			</tr>
			
			<tr>
				<th>Password</th>
				<td><input type="text" name="password"></td>
			</tr>
			
			<tr>
				<td><button>Submit</button></td>
			</tr>
			
		</table>
	</form>

</body>
</html>