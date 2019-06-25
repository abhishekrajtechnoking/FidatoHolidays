<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="otp_validation.jsp">
		<%
			String mob=request.getParameter("mobile1");
		//System.out.println("otp... "+mob);
		%>
		<table>
			<tr>
				<th>Mobile Number</th>
				<td>
					<input type="number" value="<%=mob%>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<th>Enter OTP</th>
				<td><input type="text" name="otp"></td>
			</tr>
			<tr>
				<td>
					<button>Submit</button>
				</td>
			</tr>
		</table>
		<input type="hidden" value="<%=mob%>" name="mobile3">
	</form>
</body>
</html>