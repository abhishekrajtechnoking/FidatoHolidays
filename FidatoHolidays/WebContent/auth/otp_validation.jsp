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
	
	String mobile=request.getParameter("mobile3");
	System.out.println("valid.... "+mobile);
 	String usrOtp=request.getParameter("otp");	
 	//System.out.println(mobile);
		//OTP FETCH AND VERIFY
		PreparedStatement ps2 = con.prepareStatement("SELECT OTP FROM OTP");
		String dbOtp = "";
		ResultSet rs = ps2.executeQuery();
		if (rs.last() == true) {
			dbOtp = rs.getString(1);
			System.out.println(dbOtp);
		}
	%>
	<input type="hidden" value="<%=mobile%>" name="mobile4">
	<% 
	session.setAttribute("MobSes", mobile);
	//System.out.println(mobile);
		if (usrOtp.equals(dbOtp)) {
			response.sendRedirect("usr_reg.jsp");
		} else {
			response.sendRedirect("otp.jsp");

		}
	%>
	
	
</body>
</html>