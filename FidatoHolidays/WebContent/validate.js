	function otpValidation(){
		
		var mobVal=document.getElementById("mobVal").value;
		var otpVal=document.getElementById("otpVal").value;
		var otpNum=parseInt(otpVal);
		
		//alert(otpVal+" "+mobVal);
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			var sdf =xmlhttp.responseText;
			// alert(sdf);
			 //document.getElementById("mobotp").innerHTML=sdf;
			if(sdf==otpNum){
				
				window.location.href="register.jsp?mbl="+mobVal+"";
			}
			else if(sdf==1){
				window.location.href="auth/login.jsp?mbl="+mobVal+"";
			}
			else{
			  //alert('Invalid OTP.');
				//document.getElementById("mobotp").innerHTML=xmlhttp.responseText;
			document.getElementById("lbotp").style.visibility="visible";
			
			}	
			}
		  }
		  xmlhttp.open("GET","otp_validation.jsp?otpCode="+otpVal+"&mobNum="+mobVal+"",true);
		
		xmlhttp.send();
	}
	