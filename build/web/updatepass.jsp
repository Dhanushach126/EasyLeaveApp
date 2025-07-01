<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   String p = request.getParameter("password");
   String np = request.getParameter("newpassword");
   String cp = request.getParameter("confirmpassword");
   
           
   
    
    try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/elms","root","");
                PreparedStatement ps = con.prepareStatement("update admin set Password=? where Password=?");
                ps.setString(1, cp);
                ps.setString(2, p);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("changepassword.jsp");
                }
                else
                {
                    out.println("Error");
                }
                }
               
            
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    %>