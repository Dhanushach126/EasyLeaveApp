
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
      
            HttpSession ses = request.getSession(false);  
       
        String n=(String)ses.getAttribute("uname");  
        
        String lt = request.getParameter("leavetype");
        String fd = request.getParameter("fromdate");
        String td = request.getParameter("todate");
        String de = request.getParameter("description");
        int status=0;
        int isread=0;
        
try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/elms","root","");
                PreparedStatement ps = con.prepareStatement("INSERT INTO tblleaves(LeaveType,ToDate,FromDate,Description,Status,IsRead,empid) VALUES(?,?,?,?,?,?,?)");
                ps.setString(1, lt);
                ps.setString(2, td);
                ps.setString(3, fd);
                ps.setString(4, de);
                ps.setInt(5, status);
                ps.setInt(6, isread);
                ps.setString(7, n);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("apply-leave.jsp");
                }
                    
  }
  catch(Exception ex)
  {
      ex.printStackTrace();
  }
                
                
       %>         
    
        
                                                    
