<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	<%@include file="../jdbc/connection.jsp"%>
	
    <%
    try {
		String fname;
		String lname;
		String age;
		String gndr;
		
		
		fname=request.getParameter("fName");
		lname=request.getParameter("lName");
		age=request.getParameter("age");
		gndr=request.getParameter("gndr");
		String mob=session.getAttribute("mob").toString();
		
		Class.forName("com.mysql.jdbc.Driver");
		PreparedStatement ps=con.prepareStatement("UPDATE fid_reg SET first_name=?,last_name=?,dob=?,gender=? WHERE MOBILE='"+mob+"'");
		ps.setString(1, fname);
		ps.setString(2,lname);
		ps.setString(3,age);
		ps.setString(4, gndr);
		
		int result=ps.executeUpdate();
		
		if(result>0) {
			response.sendRedirect("../user-profile-settings.jsp");
		}
		else {
			response.sendRedirect("ufailed.jsp");
		}
}
	catch(Exception e) {
		e.printStackTrace();
	}

    %>