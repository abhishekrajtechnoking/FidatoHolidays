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
			lName=request.getParameter("lName");
			age=request.getParameter("age");
			gndr=request.getParameter("gender");
			mob=request.getParameter("mobile4");
			email=request.getParameter("mail");
			password=request.getParameter("password");
			
			PreparedStatement ps1=con.prepareStatement("SELECT MOBILE,EMAIL FROM FID_REG");
			ResultSet rs=ps1.executeQuery();
			while(rs.next()){
				mobRs=rs.getString(1);
				emailRs=rs.getString(2);
			}
			
			if(mobRs.equals(mob)){
				response.sendRedirect("mobErr.jsp");
				
			}
			else if(emailRs.equals(email)){
				response.sendRedirect("mailErr.jsp");
			}
			else{
				
				PreparedStatement ps2=con.prepareStatement("INSERT INTO FID_REG VALUES(?,?,?,?,?,?,?,?)");
				ps2.setString(1,title);
				ps2.setString(2,fName);
				ps2.setString(3,lName);
				ps2.setString(4,mob);
				ps2.setString(5,email);
				ps2.setString(6,gndr);
				ps2.setString(7,age);
				ps2.setString(8,password);
				
				int res=ps2.executeUpdate();
				
				if(res>0){
					out.println("inserted");
				}
				
			}
		%>
	
</body>
</html>