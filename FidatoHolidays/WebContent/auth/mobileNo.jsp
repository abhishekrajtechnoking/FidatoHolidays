<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="../auth/mob_otp.jsp">
		<table>
			<tr>
				<th>Enter Mobile Number:</th>
				<td><input type="number" placeholder="Enter mobile no" name="mobile1"></td>
				
			</tr>
			<tr>
				<td>
					<button>Send OTP</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>