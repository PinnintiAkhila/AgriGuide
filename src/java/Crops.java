/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RGUKT
 */
@WebServlet(urlPatterns = {"/Crops"})
public class Crops extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter(); 
        try{    
            
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            String conURL="jdbc:mysql://localhost:3306/student";
            String dbUser="root";
            String dbPWD="";
            String dst =request.getParameter("mytown");
            //out.println(dst);
            con = DriverManager.getConnection(conURL, dbUser,dbPWD);
            String sqlquery="select * from seasonal_crops where district='"+dst+"'";
           //out.println(sqlquery);
            PreparedStatement stmnt=con.prepareStatement(sqlquery);
            ResultSet rs=stmnt.executeQuery(sqlquery);
    out.println("<a href='logincrops.html'><button style='background-color:blue;color:white;font-size:20px'>Back</button></a>");        
   out.println("<br><br><center><h1 style='color:crimson;'>Best crops for your fields in different seasons</h1></center>");     
   out.println("<center><br><br><br><br>");
   out.println("<table cellspacing='0' rules=\"all\" id=\"ContentPlaceHolder1_GridView1\" cellpadding='4'  style='background-color:White;border-color:#336666;border-width:3px;border-style:Double;border-collapse:collapse; width:800px'>");
   out.println("<tr style='color:White;background-color:#336666;font-weight:bold;'>");
   out.println("<th>Better Crop</th>");
   out.println("<th>Season</th>");
   out.println("<th>District</th>");
   out.println("</tr>");
 while(rs.next()) {
      String b= rs.getString("Better_crop");
      String s= rs.getString("season");
      String d= rs.getString("district");
      out.println("<tr style=\"color:#333333;background-color:White;text-align:center\">");
      out.println("<td>"+b+"</td>");
      out.println("<td>"+s+"</td>");
      out.println("<td>"+d+"</td>");
      out.println("</tr>"); 
 }
 out.println("</table>");
 out.println("</center>");
    }
     catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Crops.class.getName()).log(Level.SEVERE, null, ex);
        }
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
