<%-- 
    Document   : logout
    Created on : Oct 30, 2018, 8:08:11 PM
    Author     : RGUKT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("home.html");
        %>
    </body>
</html>
