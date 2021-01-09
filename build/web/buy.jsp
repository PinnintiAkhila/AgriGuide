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
        <form name="buyers" action="Buy" method="post"> 
            Account no:<input type="text" name="acno"  required><br><br>
            IFSC code:<input type="text" name="ic" required><br><br>
            Brach:
            <select id="bran" name="branch">
                 <option value="0">--select branch--</option>
                <option value="basar">basar</option>
                
                <option value="basar">hyderabad</option>
                <option value="basar">warangal</option>
            </select><br><br>
            
            <input type="submit" class="buy" value="Confirm" onclick="Validate();"/><br>
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
            String price7=request.getParameter("p7");
            String price8=request.getParameter("p8");
            String price9=request.getParameter("p9");
            String price10=request.getParameter("p10");
            String price11=request.getParameter("p11");
            String price12=request.getParameter("p12");
            String price13=request.getParameter("p13");
            String price14=request.getParameter("p14");
            String price15=request.getParameter("p15");
            String price16=request.getParameter("p16");
            
            HttpSession s = request.getSession();
             int pr1=0,pr2=0,pr3=0,pr4=0,pr5=0,pr6=0,pr7=0,pr8=0,pr9=0,pr10=0,pr11=0,pr12=0,pr13=0,pr14=0,pr15=0,pr16=0; 
            
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
             if(price7!=null)
                    {
                       pr7=Integer.parseInt(price7);
                       s.setAttribute("price7",pr7);
                    }
             else{
                    pr7=0;
                    s.setAttribute("price7",pr7);
                }
             if(price8!=null)
                    {
                       pr8=Integer.parseInt(price8);
                       s.setAttribute("price8",pr8);
                    }
             else{
                    pr8=0;
                    s.setAttribute("price8",pr8);
                }
             if(price9!=null)
                    {
                       pr9=Integer.parseInt(price9);
                       s.setAttribute("price9",pr9);
                    }
             else{
                    pr9=0;
                    s.setAttribute("price9",pr9);
                }
             if(price10!=null)
                    {
                       pr10=Integer.parseInt(price10);
                       s.setAttribute("price10",pr10);
                    }
             else{
                    pr10=0;
                    s.setAttribute("price10",pr10);
                }
             if(price11!=null)
                    {
                       pr11=Integer.parseInt(price11);
                       s.setAttribute("price11",pr11);
                    }
             else{
                    pr11=0;
                    s.setAttribute("price11",pr11);
                }
             if(price12!=null)
                    {
                       pr12=Integer.parseInt(price12);
                       s.setAttribute("price12",pr12);
                    }
             else{
                    pr12=0;
                    s.setAttribute("price12",pr12);
                }
             if(price13!=null)
                    {
                       pr13=Integer.parseInt(price13);
                       s.setAttribute("price13",pr13);
                    }
             else{
                    pr13=0;
                    s.setAttribute("price13",pr13);
                }
             if(price14!=null)
                    {
                       pr14=Integer.parseInt(price14);
                       s.setAttribute("price14",pr14);
                    }
             else{
                    pr14=0;
                    s.setAttribute("price14",pr14);
                }
             if(price15!=null)
                    {
                       pr15=Integer.parseInt(price15);
                       s.setAttribute("price15",pr15);
                    }
             else{
                    pr15=0;
                    s.setAttribute("price15",pr15);
                }
             if(price16!=null)
                    {
                       pr16=Integer.parseInt(price16);
                       s.setAttribute("price16",pr16);
                    }
             else{
                    pr16=0;
                    s.setAttribute("price16",pr16);
                }
             
            }
            catch(NullPointerException ex)
            {
                
            }
        %>
    </body>
</html>
