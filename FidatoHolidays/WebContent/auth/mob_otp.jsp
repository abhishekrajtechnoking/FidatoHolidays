<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" java.io.FileNotFoundException,java.io.FileReader,java.io.IOException,
java.io.InputStream,java.net.URL,java.net.URLConnection,org.json.simple.JSONObject,
org.json.simple.parser.JSONParser,org.json.simple.parser.ParseException,java.util.Random"%>

<%@include file="otp.jsp" %>
<%@include file="../jdbc/connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="#" method="post">
	
			<%		
			 try {
				 
				 	String mobile=request.getParameter("mobile1");
				 	//session.setAttribute("mobSes", mobile);
				 	String usrOtp=request.getParameter("otp");
				 	//System.out.println(mobile);
				 	Random rand= new Random();
				 	int otp=rand.nextInt(900000) + 100000;
				 	
				 	PreparedStatement ps1=con.prepareStatement("INSERT INTO OTP VALUES(?)");
				 	ps1.setInt(1,otp);
				 	int res1=ps1.executeUpdate();
				 	
				 
				 	
				 	
		            URL url = new URL("http://sms.nixtor.in/submitsms.jsp?user=TecnoKng&key=a11db7945bXX&mobile=+91"+mobile+"&message="+otp+"&senderid=NOTIFY&accusage=1");
		            URLConnection urlcon = url.openConnection();
		            InputStream stream = urlcon.getInputStream();
		            
		            
		            
		            int i;
		            String res="";
		            while ((i = stream.read()) != -1) {
		                res+=(char)i;
		            }
		            /* if(res.contains("success")){
		                System.out.println("Successfully send SMS");
		                
		            }
		            else{
		            	
		                System.out.println(response);
		                
		                String huh=response.toString();
		                
		                Object obj=new JSONParser().parse(huh);
			            JSONObject jo=(JSONObject)obj;
		                
		                String resp=(String)jo.get("msg");
		                Boolean st=(Boolean)jo.get("status");
		                System.out.println(res);
		                System.out.println("st");
		                 */
		           	
		        } catch (Exception e) {
		            System.out.println(e.getMessage());
	}

			%>
		
			<input type="hidden" value="<%=mob%>" name="mobile2">
	
	</form>
</body>
</html>