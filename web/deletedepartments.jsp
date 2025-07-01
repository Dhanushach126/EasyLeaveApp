<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    int id = Integer.parseInt(request.getParameter("del"));
    
    try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/elms","root","");
                PreparedStatement ps = con.prepareStatement("delete from tbldepartments where id=?");
                ps.setInt(1,id);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("managedepartments.jsp");
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