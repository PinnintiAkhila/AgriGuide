<html>
<head>
   <link rel='stylesheet' href='register.css' type='text/css' />
</head>
<body>
<script>
function validateForm() 
{
    var name = document.getElementById("userid").value;
    var mail=document.getElementById("email").value;       
    var password = document.getElementById("passid").value;
    var cpass = document.getElementById("passid2").value;				
    var phone=document.getElementById("phno").value; 
    var city = document.getElementById("vill").value;
    var letters = /^[A-Za-z]+$/;
    var phoneno =/^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[6789]\d{9}$/;	
    if ( name.length>=3&&name.match(letters))
    {
    }                           
    else
    {
        alert("User name should not be empty / length be between 3 to 12");
        return false;
    }
    if(mail==="")
    {
        alert("enter the mail");
        return false;
    }		
    if (/^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/.test(mail))
    {		
    }
    else
    {
        alert("Invalid Email");
        return false;
    }
    if(password==="")
    {
        alert("enter the password");
        return false;
    }
    if(password.length<8)
    {
        alert("password contains atleast 8 characters");
        return false;
    }
    if(cpass==="")
    {
        alert("enter the Retype password");
        return false;
    }
    if(password===cpass && password!=="")
    {
    }
    else
    {
        alert("passwords not matched");
        return false;
    }
    if(phone==="")
    {
        alert("enter the phone number");
        return false;
    }
    if(phone.length===10 && phone.match(phoneno))
    {
    }
    else
    {
        alert("Invalid phone number / phone number should not start with 0");
        return false;
    }
    if (city.length>=3 && city.match(letters))
    {
    }
    else
    {
	alert("city name should not be empty / length should be  3 or more  /enter characters only");
	return false;
    }
    return true;                              
}
</script>
<body onLoad="document.frm.userid.focus();">    
    <%
            String user=(String)session.getAttribute("user");
            
             
             if(user!=null)
             {
                response.sendRedirect("home.html");
             }
                        
        %>
 <a href="home.html"><button>Back</button></a>
    <form name="frm" method="post" action="reg.jsp" onsubmit="return validateForm();"   >
    <div id="login-box" style="background-color:cyan;">
         <div class="left">
         <br>
         <h1><b>Register Here</b></h1>
    
        <input type="text" name="userid" id="userid" placeholder="Username" />
        <input type="text" name="email" id="email" placeholder="E-mail"  />
        <input type="password" name="passid" id="passid" placeholder="Password"  />
        <input type="password" name="passid2" id="passid2" placeholder="Retype password" />
        <input type="text" name="phno" id="phno" placeholder="Phone number" />
        <input type="text" name="vill" id="vill" placeholder="village" />

        <input type="Submit" name="signup_submit" value="Sign me up" />
    
     </div>
    </form>
   
    <div class="right" >
        <img src="agricultura-gif.gif" width="100%" height="100%">
    </div>
</div>
</body>
</html>