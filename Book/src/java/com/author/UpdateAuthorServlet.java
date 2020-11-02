
package com.author;

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UpdateAuthorServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdb", "root", "");
            Statement st=cn.createStatement();
            int id=Integer.parseInt(request.getParameter("a_id"));
            String name=request.getParameter("a_name");
            String mobile=request.getParameter("a_mobile");
            String address=request.getParameter("a_address");
            String aadhar=request.getParameter("a_aadharcardno");
            String qry="update author set a_name='"+name+"' , a_mobile='"+mobile+"' , a_address='"+address+"' , a_aadharcardno='"+aadhar+"' where a_id="+id;
            int no=st.executeUpdate(qry);
            
            if(no>0)
            {
              response.sendRedirect("ViewAllAuthor.jsp");
            }
        } catch (Exception ex) {
           out.println("An Error occured!!");
           
        }
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
