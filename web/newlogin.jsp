<%-- 
    Document   : login1
    Created on : Oct 24, 2018, 6:33:05 PM
    Author     : RGUKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <style>
        
 body {font-family: Arial, Helvetica, sans-serif;
      background-image:url(frame.jpg);
      background-repeat:no-repeat;
      background-size:100%;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
label{
    text-align:left;
    float:left;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: 20px;
    padding: 10px 18px;
    background-color: #f44336;
}
.regi{
    width: 20px;
    padding: 10px 18px;
    background-color:#4CAF50;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 10%;
    height:20%;
    border-radius:60%;
}

.container {
    padding: 16px;
    width:20%;
    border: 1px solid #f1f1f1; width:30%;
}
.regi
{
 width: 40%;
}
marquee{
      font-size:60px;
	  font-family:verdana;
          color:#000099;
}
/* Change styles for span and cancel button on extra small screens */
    .cancelbtn {
      width: 40%;
    }       .button{
	
   background-color:cyan;
   border-radius:4px;
   border:none;
   color:black;
   padding:10px 20px;
   text-decoration:none;
   display:inline-blank;
   margin:4px 2px;
   font-size:15px;
  margin-left:600px;
   cursor:pointer;
	transition: all 0.5s;

}
.button span
{
cursor:pointer;
display:inline-block;
position:relative;
transition:0.5s;
}
.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
.mySlides {display:none;}


.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.button:hover {background-color: #00ff80}

.button:active {
  background-color: #00ff80;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.content{
	max-width:500px;
	margin-left:115px;
}

        </style>
    </head>
    <body>
        <script>
        function validateForm() {
		
				var pwd = document.getElementById("password").value;
				var mail=document.getElementById("uname").value;
				var letters = /^[A-Za-z]+$/;
				var phoneno = /^\d{10}$/;
				
				
			
					
					if(mail=="")
					{
					alert("enter the username");
					return false;
					}
					
					
							if(pwd==""){
					alert("enter the password");
					return false;
					}
                                        if(pwd.length<8)
                                        {
                                            alert("password contains atleast 8 characters");
                                            return false;
                                        }
			}
		</script>
                
					
					
				
						
					
        <%
            String user=(String)session.getAttribute("user");
            String user1=(String)session.getAttribute("user1");
             
             if(user!=null)
             {
                 response.sendRedirect("newsubmit.html");
             }
                        
        %>
            <center>
<marquee direction="left" scrollamount=20><i><b>Welcome to Agri-Guide</i></b></marquee>
<form action="newlog1.jsp" method="post">
    <h1 style ="color:#336600">Login Here</h1>
  <div class="imgcontainer">
    <img src="login2.PNG" alt="Avatar" class="avatar">
  </div>
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="userid" id="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="passid" id="password" required>
        
    <button type="submit">Login</button>
  </div>

  <div class="container">
      <a href="newlogin.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
      <a href="home.html"><button type="button" class="regi">Back</button></a>
  </div>
</form>
</center>
    </body>
</html>
