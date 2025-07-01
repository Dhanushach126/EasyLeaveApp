<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   int ld = Integer.parseInt(request.getParameter("ld"));
   int np = Integer.parseInt(request.getParameter("status"));
   String cp = request.getParameter("description");
   int is = 1;
   
   out.println(ld+np+cp+is);
   
           
   
    
    try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/elms","root","");
                PreparedStatement ps = con.prepareStatement("update tblleaves set Status=?,IsRead=?,AdminRemark=? where id=?");
                
                
                ps.setInt(1, np);
                ps.setInt(2, is);
                ps.setString(3, cp);
                ps.setInt(4, ld);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("leave-details.jsp");
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