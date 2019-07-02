
<%@include file="include/config.jsp" %>
    <%@include file="../jdbc/connection.jsp"%>
<%@page import="java.text.DateFormat,java.text.SimpleDateFormat,java.time.LocalDateTime,java.time.LocalDate,
java.time.format.DateTimeFormatter,java.util.Calendar,java.util.Date,java.util.Random" %>

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
String today=(DateTimeFormatter.ofPattern("yyy/MM/dd").format(localDate));
System.out.println(today);

Random rand = new Random(); 


int num = rand.nextInt(10000); 
String enq_num=Integer.toString(num);
	
	String fname=request.getParameter("fname");
	String mobile=request.getParameter("mobile");
	String email=request.getParameter("email");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
	
	PreparedStatement psUsrEnq=con.prepareStatement("INSERT INTO user_enquiry(enq_no,fullname,email,mobile,subject,message,time,status,followups_status,followups_comment) VALUES(?,?,?,?,?,?,?,?,?,?)");
	psUsrEnq.setString(1, enq_num);
	psUsrEnq.setString(2, fname);
	psUsrEnq.setString(3, email);
	psUsrEnq.setString(4, mobile);
	psUsrEnq.setString(5, subject);
	psUsrEnq.setString(6, message);
	psUsrEnq.setString(7, today);
	psUsrEnq.setString(8, "Pending");
	psUsrEnq.setString(9, "waiting");
	psUsrEnq.setString(10, "not applicaable");
	
	int resUsrEnq=psUsrEnq.executeUpdate();
	if(resUsrEnq>0){
		response.sendRedirect("success-enquiry.jsp?orderid="+enq_num+"");
	}
	else{
		out.println("err enq");
	}
	
	
	
	
%>

    
            