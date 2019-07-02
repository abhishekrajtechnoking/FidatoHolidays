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
			String title="";
			String fName="";
			String lName="";
			String age="";
			String gndr="";
			String mob="";
			String email="";
			String password="";
			String mobRs="";
			String emailRs="";
			
			title=request.getParameter("title");
			fName=request.getParameter("fname");
			lName=request.getParameter("lname");
			age=request.getParameter("age");
			gndr=request.getParameter("gender");
			mob=(String)session.getAttribute("mobSes");
			System.out.println("register mob "+mob);
			email=request.getParameter("mail");
			password=request.getParameter("password");
			
			PreparedStatement ps1=con.prepareStatement("SELECT * FROM fid_reg WHERE MOBILE='"+mob+"'");
			ResultSet rs=ps1.executeQuery();
			if(rs.next()==false){

				PreparedStatement ps2=con.prepareStatement("INSERT INTO fid_reg VALUES(?,?,?,?,?,?)");
				ps2.setString(1,title);
				ps2.setString(2,fName);
				ps2.setString(3,lName);
				ps2.setString(4,mob);
				ps2.setString(5,email);
				ps2.setString(6,password);
			
				int res=ps2.executeUpdate();
				
				PreparedStatement ps3=con.prepareStatement("UPDATE otp SET status=? where mobile='"+mob+"'");
				ps3.setString(1,"1");
				int res1=ps3.executeUpdate();
				response.sendRedirect("../index.jsp");
			
			}
			else{
				response.sendRedirect("mobErr.jsp");
				
			}
	
		%>
	
</body>
</html>