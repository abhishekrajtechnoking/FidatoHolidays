<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="../jdbc/connection.jsp"%>
<%@page import="java.text.DateFormat,java.text.SimpleDateFormat,java.time.LocalDateTime,java.time.LocalDate,
java.time.format.DateTimeFormatter,java.util.Calendar,java.util.Date,java.util.Random" %>

<%@include file="include/config.jsp" %>
<%
		 DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		
		Date date = new Date();
		//System.out.println(sdf.format(date));
		
		Calendar cal = Calendar.getInstance();
		//System.out.println(sdf.format(cal.getTime()));
		
		LocalDateTime now = LocalDateTime.now();
		//System.out.println(dtf.format(now));
		
		LocalDate localDate = LocalDate.now();
		String strDate=(DateTimeFormatter.ofPattern("yyy/MM/dd").format(localDate));
		System.out.println(strDate);
		
		 Random rand = new Random(); 
		  
         
	        int num = rand.nextInt(10000); 
	        String tid=Integer.toString(num);
	
	String ordId=request.getParameter("orderid");
	String fname=request.getParameter("fname");
	String bpoint=request.getParameter("bpoint");
	String tpax=request.getParameter("tpax");
	String mobile=request.getParameter("mobile");
	String email=request.getParameter("email");
	String bdate=request.getParameter("start");
	String amount=request.getParameter("amount");
	
	PreparedStatement ps=con.prepareStatement("INSERT INTO holiday_booking(agent_id,tid,package_id,boarding_city,amount,booking_date,client_name,client_contact_no,client_email,DOJ,amount_received,adult,infant,children) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, "Guest");
	ps.setString(2, tid);
	ps.setString(3, ordId);
	ps.setString(4, bpoint);
	ps.setString(5, amount);
	ps.setString(6, strDate);
	ps.setString(7, fname);
	ps.setString(8, mobile);
	ps.setString(9, email);
	ps.setString(10, bdate);
	ps.setInt(11, 0);
	ps.setString(12, tpax);
	ps.setInt(13, 0);
	ps.setInt(14, 0);
	
	int res=ps.executeUpdate();
	
	if(res>0){
		response.sendRedirect("success-payment.jsp?orderid="+tid+"");
	}
	else{
		out.println("error");
	}
%>


            