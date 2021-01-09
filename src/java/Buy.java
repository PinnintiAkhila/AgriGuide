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
import javax.servlet.http.HttpSession;

/**
 *
 * @author RGUKT
 */
@WebServlet(urlPatterns = {"/Buy"})
public class Buy extends HttpServlet {

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
            
            String account2=request.getParameter("acno");
            String ifsc2=request.getParameter("ic");
            String branch2=request.getParameter("branch");
            
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            String conURL="jdbc:mysql://localhost:3306/student";
            
            String dbUser="root";
            String dbPWD="";
            con = DriverManager.getConnection(conURL, dbUser,dbPWD);
            String sqlquery="select * from buyers";
            PreparedStatement stmnt=con.prepareStatement(sqlquery);
            ResultSet rs=stmnt.executeQuery(sqlquery);
            int count = 0;
            
            
            while(rs.next())
            {
               String acno=rs.getString("accountnumber");
                String ifsc=rs.getString("ifsc_code");
                String branch=rs.getString("branch");
                
                String balance=rs.getString("balance");
                
                int blnc=Integer.parseInt(balance);
               if(acno.equals(account2) && ifsc.equals(ifsc2) && branch.equals(branch2))
                {
                   count=1;
                    HttpSession ss = request.getSession();
                    int n1 = (int)ss.getAttribute("price1");
                    int n2 = (int)ss.getAttribute("price2");
                    int n3 = (int)ss.getAttribute("price3");
                    int n4 = (int)ss.getAttribute("price4");
                    int n5 = (int)ss.getAttribute("price5");
                    int n6 = (int)ss.getAttribute("price6");
                    int n7 = (int)ss.getAttribute("price7");
                    int n8 = (int)ss.getAttribute("price8");
                    int n9 = (int)ss.getAttribute("price9");
                    int n10 = (int)ss.getAttribute("price10");
                    int n11 = (int)ss.getAttribute("price11");
                    int n12 = (int)ss.getAttribute("price12");
                    int n13 = (int)ss.getAttribute("price13");
                    int n14 = (int)ss.getAttribute("price14");
                    int n15 = (int)ss.getAttribute("price15");
                    int n16 = (int)ss.getAttribute("price16");
                    int price=n1+n2+n3+n4+n5+n6+n7+n8+n9+n10+n11+n12+n13+n14+n15+n16;
                    if(blnc>=price)
                    {
                    out.println("<body bgColor='whitesmoke'><center><h1>You have buyed successfully</h1><h2>Debited Amount:"+price+"</h2></center>");
                    int original=blnc-price;
                    out.println("<center><h2>Available balance is :    "+original+"</h2></center>");
                    String sqlquery2="update buyers set balance= "+original+" where accountnumber='"+account2+"'";
                    PreparedStatement stmnt2=con.prepareStatement(sqlquery2);
                    stmnt2.executeUpdate(sqlquery2);
                    
                    }
                    else{
                        out.println("<h1 style='color:red'>OOPs! insufficient balance</h1>");
                    }
                }
               }
            if(count==0)
            {   
                out.println("<script>");
                out.println("alert('invalid account Deatails');window.location.replace('fertilizers.jsp');");
                out.println("</script>");
            }
        processRequest(request, response);
    }  catch (ClassNotFoundException ex) {
            Logger.getLogger(Buy.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Buy.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(NumberFormatException ex){
            
        }
        catch(NullPointerException ex)
        {
            Logger.getLogger(Buy.class.getName()).log(Level.SEVERE, null, ex);
        }
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
