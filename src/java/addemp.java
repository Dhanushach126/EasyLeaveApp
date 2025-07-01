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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dhanush
 */
public class addemp extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String e = request.getParameter("empcode");
            String f = request.getParameter("firstName");
            String l = request.getParameter("lastName");
            String m = request.getParameter("email");
            String p = request.getParameter("password");
            String g = request.getParameter("gender");
            String d = request.getParameter("dob");
            String de = request.getParameter("department");
            String a = request.getParameter("address");
            String c = request.getParameter("city");
            String co = request.getParameter("country");
            String mo = request.getParameter("mobileno");
            int status=1;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/elms","root","");
                PreparedStatement ps = con.prepareStatement("INSERT INTO tblemployees(EmpId,FirstName,LastName,EmailId,Password,Gender,Dob,Department,Address,City,Country,Phonenumber,Status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, e);
                ps.setString(2, f);
                ps.setString(3, l);
                ps.setString(4, m);
                ps.setString(5, p);
                ps.setString(6, g);
                ps.setString(7, d);
                ps.setString(8, de);
                ps.setString(9, a);
                ps.setString(10, c);
                ps.setString(11, co);
                ps.setString(12, mo);
                ps.setInt(13, status);
                
               // ps.setString(1, u);
               // ps.setString(2, p);
                //ps.setString(3, d);
                int i = ps.executeUpdate();
                if(i>0)
                {
                   response.sendRedirect("addemployee.jsp");
                  
                }
                else
                {
                    out.println("<script>alert('Username or Password Incorrecr')</script>");
                }
                }
            
        
            catch(Exception ex)
            {
                ex.printStackTrace();
            }

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
