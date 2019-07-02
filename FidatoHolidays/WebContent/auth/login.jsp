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
		try{
			String email="";
			String mobile="";
			String password="";
			email=request.getParameter("mobemail");
			mobile=request.getParameter("mbl");
			password=request.getParameter("pwdLog");
			System.out.println(mobile);
			PreparedStatement ps=con.prepareStatement("SELECT * FROM fid_reg WHERE EMAIL='"+email+"' OR MOBILE='"+mobile+"'");
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				session.setAttribute("mobile", mobile);
				//System.out.println(mobile);
				session.setAttribute("email", email);
				session.setAttribute("user_name", rs.getString("first_name")+""+rs.getString("last_name"));
				//session.setAttribute("email", email);
				
				response.sendRedirect("../index.jsp?mob="+mobile+"");
			
			}
			else{
				response.sendRedirect("../loginFailed.jsp");
			}
			
		}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>