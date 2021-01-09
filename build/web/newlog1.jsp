
<%@page import="org.omg.CORBA.DynAnyPackage.Invalid"%>

<%-- 
    Document   : login
    Created on : Oct 10, 2018, 4:16:47 PM
    Author     : RGUKT
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%
            
            String userid=request.getParameter("userid");
            String pwd=request.getParameter("passid");
                               
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
                Statement st=con.createStatement();
                ResultSet rs;
                rs=st.executeQuery("select * from login where userid ='"+userid+"' and passid='"+pwd+"'");
                
                
                    if(rs.next())
                    {
                        if((rs.getString(1).equals(userid))&&(rs.getString(2).equals(pwd)))
                        {
                          
                            session.setAttribute("user",userid);
                            response.sendRedirect("newsubmit.html");
                        }
                        else
                        {
                           
                            out.print("***");
                            response.sendRedirect("newlogin.jsp");
                            out.print("alert(Invalid credentials)");
  
                        }
                    }
                    
                    else{
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Invalid credentials');window.location.replace('newlogin.jsp');");
                        out.println("</script>");
                    }
                
                
            %>
    </body> 
</html>
