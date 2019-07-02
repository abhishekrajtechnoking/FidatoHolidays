<%@include file="../jdbc/connection.jsp"%>
<%
String mobile=request.getParameter("mobNum");
	String usrOtp=request.getParameter("otpCode");	
 			PreparedStatement ps2 = con.prepareStatement("SELECT * FROM OTP");
 			PreparedStatement ps3 = con.prepareStatement("SELECT * FROM OTP where mobile='"+mobile+"'");
		
		ResultSet rs = ps2.executeQuery();
		ResultSet rs1 = ps3.executeQuery();
		
		String mob="";
		String otp="";
		String status="";
		
		rs.last();
		mob=rs.getString("mobile");
		otp=rs.getString("otp");
		System.out.println(mob);
		System.out.println(otp);
		
		if(rs1.next()){
			
			
			status=rs1.getString("status");
			
			System.out.println(status);
		
		}
			if(mobile.equals(mob) && status.equals("1")  && usrOtp.equals(otp)){
				
				out.println("1");
			}
			else if(mobile.equals(mob) && status.equals("0") || status.equals("") && usrOtp.equals(otp)){
				out.println(otp);
			}
			else{
				out.println("2");
			
			
		}
	%>