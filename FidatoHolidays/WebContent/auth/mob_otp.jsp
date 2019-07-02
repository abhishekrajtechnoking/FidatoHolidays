<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" java.io.FileNotFoundException,java.io.FileReader,java.io.IOException,
java.io.InputStream,java.net.URL,java.net.URLConnection,org.json.simple.JSONObject,
org.json.simple.parser.JSONParser,org.json.simple.parser.ParseException,java.util.Random,java.text.DateFormat,java.text.SimpleDateFormat,java.time.LocalDateTime,java.time.LocalDate,
java.time.format.DateTimeFormatter,java.util.Calendar,java.util.Date"%>


<%@include file="../jdbc/connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
			<%		
			 try {
				 
				 
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
				 
				 	String mobile=request.getParameter("mobile1");
				 	session.setAttribute("mobSes", mobile);
				 	String usrOtp=request.getParameter("otp");
				 	//System.out.println(mobile);
				 	Random rand= new Random();
				 	int otp=rand.nextInt(900000) + 100000;
				 	int id=rand.nextInt(910000) + 100000;
				 	
				
				 	
				 
				 	
				 	
		           /*  URL url = new URL("http://sms.nixtor.in/submitsms.jsp?user=TecnoKng&key=a11db7945bXX&mobile=+91"+mobile+"&message="+otp+"&senderid=NOTIFY&accusage=1");
		            URLConnection urlcon = url.openConnection();
		            InputStream stream = urlcon.getInputStream();
		            
		            
		            
		            int i;
		            String res="";
		            while ((i = stream.read()) != -1) {
		                res+=(char)i;
		            } */
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
		                
		              	PreparedStatement ps1=con.prepareStatement("INSERT INTO OTP VALUES(?,?,?,?,?)");
						 	ps1.setInt(1,id);
						 	ps1.setString(2,mobile);
						 	ps1.setInt(3,otp);
						 	ps1.setString(4,strDate);
						 	ps1.setString(5,"0");
						 	int res1=ps1.executeUpdate();
						 	
						 	if(res1>0){
						 		response.sendRedirect("../otp.jsp");
						 	}
						 	
						 	
		           	
		        } catch (Exception e) {
		        	e.printStackTrace();
		       
		            System.out.println(e.getMessage());
		            
		           
	}

			%>
		
			
	
	
</body>
</html>