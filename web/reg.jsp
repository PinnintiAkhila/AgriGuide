<%-- 
    Document   : register
    Created on : Oct 10, 2018, 3:36:43 PM
    Author     : RGUKT
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%
            try
            {
            response.setContentType("text/html");
            String userName=request.getParameter("userid");
            
            String Password=request.getParameter("passid");
            
            String Mobile=request.getParameter("phno");
            String Email=request.getParameter("email");
             
            String vill=request.getParameter("vill");
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            String conURL="jdbc:mysql://localhost:3306/student";
            String dbUser="root";
            String dbPWD="";
            String ConURL=null;
            con=DriverManager.getConnection(conURL,dbUser,dbPWD);
            PreparedStatement ps=con.prepareStatement("insert into login values(?,?,?,?,?)");
             ps.setString(1,userName);
            ps.setString(2,Password);
            ps.setString(3,Email);
             ps.setString(4,Mobile);
            ps.setString(5,vill);
            
            int i= ps.executeUpdate();
            
            %>
            <%
                if(i>0)
            {
              
           session.setAttribute("user",userName);   
               out.println("<script type=\"text/javascript\">");
       out.println("alert('Registered successfully');window.location.replace('newsubmit.html');");
      out.println("</script>");                         
}
            
            }catch(Exception ex)
{
               out.println("<script type=\"text/javascript\">");
       out.println("alert('username is  already existing plese change');window.location.replace('registration_1.jsp');");
      out.println("</script>");                         
}
                %>
                
    
    </body>
</html>
