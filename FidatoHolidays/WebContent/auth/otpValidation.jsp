<%@include file="../jdbc/connection.jsp"%>
<%
String mobile=request.getParameter("mobNum");
	String usrOtp=request.getParameter("otpCode");	
 			PreparedStatement ps2 = con.prepareStatement("SELECT * FROM OTP");
		
		ResultSet rs = ps2.executeQuery();
		
		String mob="";
		String otp="";
		String status="";
		
		while(rs.next()){
			
			mob=rs.getString("mobile");
			otp=rs.getString("otp");
			status=rs.getString("status");
			System.out.println(status);
			System.out.println(status);
		
			if(usrOtp.equals(otp)){
				
				out.println("1");
			}
			else{
				out.println("2");
			}
		
		}
	%>