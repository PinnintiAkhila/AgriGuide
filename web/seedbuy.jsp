<%-- 
    Document   : buy
    Created on : Nov 1, 2018, 4:06:04 PM
    Author     : RGUKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function Validate(){
              
               
                var result=document.getElementById('bran').value;
                if(result==="0")
                {
                    alert(" please select branch");
                }
            }
            </script>
            <style>
            .buy{
    background-color:green; /* Green */
    border: none;
    color: white;
    padding: 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 6px;
}
    </style>
    </head>
    <body bgColor="WhiteSmoke">
        <a href="fertilizers.jsp"><button style="background-color:blue;color:white">Back</button></a>
    <center>
        <br><br>
        <h1>Enter the Account Details</h1>
        <br>
        <form name="buyers" action="Seedbuy" method="post"> 
            Account no:<input type="text" name="acno" id="acno" required><br><br>
            IFSC code:<input type="text" name="ic" id="ic" required><br><br>
            Branch:
            <select id="bran" name="branch" required>
                <option value="0">--select branch--</option>
                <option value="basar">basar</option>
                <option value="hyderabadr">hyderabad</option>
                <option value="warangal">warangal</option>
            </select><br><br>
            
            <input type="submit" class="buy" value="Confirm" onclick="Validate()"/><br>
        </form>
        </center>
        <%
            try{
            String price1=request.getParameter("p1");
            String price2=request.getParameter("p2");
            String price3=request.getParameter("p3");
            String price4=request.getParameter("p4");
            String price5=request.getParameter("p5");
            String price6=request.getParameter("p6");
            
            
            HttpSession s = request.getSession();
             int pr1=0,pr2=0,pr3=0,pr4=0,pr5=0,pr6=0; 
            
             if(price1!=null)
                    {
                       pr1=Integer.parseInt(price1);
                       s.setAttribute("price1",pr1);
                    }
             else{
                    pr1=0;
                    s.setAttribute("price1",pr1);
                }
             if(price2!=null)
                    {
                       pr2=Integer.parseInt(price2);
                       s.setAttribute("price2",pr2);
                    }
             else{
                    pr2=0;
                    s.setAttribute("price2",pr2);
                }
             if(price3!=null)
                    {
                       pr3=Integer.parseInt(price3);
                       s.setAttribute("price3",pr3);
                    }
             else{
                    pr3=0;
                    s.setAttribute("price3",pr3);
                }
             if(price4!=null)
                    {
                       pr4=Integer.parseInt(price4);
                       s.setAttribute("price4",pr4);
                    }
             else{
                    pr4=0;
                    s.setAttribute("price4",pr4);
                }
             if(price5!=null)
                    {
                       pr5=Integer.parseInt(price5);
                       s.setAttribute("price5",pr5);
                    }
             else{
                    pr5=0;
                    s.setAttribute("price5",pr5);
                }
             if(price6!=null)
                    {
                       pr6=Integer.parseInt(price6);
                       s.setAttribute("price6",pr6);
                    }
             else{
                    pr6=0;
                    s.setAttribute("price6",pr6);
                }
             
            }
            catch(NullPointerException ex)
            {
                
            }
        %>
    </body>
</html>
