<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        
        <!-- Title -->
        <title>Employee | Change Password</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta charset="UTF-8">
        <meta name="description" content="Responsive Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
        <!-- Styles -->
        <link type="text/css" rel="stylesheet" href="assets/plugins/materialize/css/materialize.min.css"/>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="assets/plugins/material-preloader/css/materialPreloader.min.css" rel="stylesheet"> 
        <link href="assets/css/alpha.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <style>
        .errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
        </style>
    </head>
    <body>
        <%
            HttpSession ses = request.getSession(false);  
       
        String n=(String)ses.getAttribute("uname");  
        
            %>
          <div class="loader-bg"></div>
        <div class="loader">
            <div class="preloader-wrapper big active">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div><div class="gap-patch">
                    <div class="circle"></div>
                    </div><div class="circle-clipper right">
                    <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-spinner-teal lighten-1">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div><div class="gap-patch">
                    <div class="circle"></div>
                    </div><div class="circle-clipper right">
                    <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div><div class="gap-patch">
                    <div class="circle"></div>
                    </div><div class="circle-clipper right">
                    <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div><div class="gap-patch">
                    <div class="circle"></div>
                    </div><div class="circle-clipper right">
                    <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mn-content fixed-sidebar">
            <header class="mn-header navbar-fixed">
                <nav class="cyan darken-1">
                    <div class="nav-wrapper row">
                        <section class="material-design-hamburger navigation-toggle">
                            <a href="#" data-activates="slide-out" class="button-collapse show-on-large material-design-hamburger__icon">
                                <span class="material-design-hamburger__layer"></span>
                            </a>
                        </section>
                        <div class="header-title col s3">      
                            <span class="chapter-title">ELMS | Employee</span>
                        </div>
                     
                
                    </div>
                </nav>
            </header>
            
                 <aside id="slide-out" class="side-nav white fixed">
                <div class="side-nav-wrapper">
                    <div class="sidebar-profile">
                        <div class="sidebar-profile-image">
                            <img src="assets/images/profile-image.png" class="circle" alt="">
                        </div>
    
                    </div>
              
                <ul class="sidebar-menu collapsible collapsible-accordion" data-collapsible="accordion">
                  
                    <li class="no-padding">
                        <a class="waves-effect waves-grey" href="myprofile.jsp">My Profiles</a>
                    </li>
                    <li class="no-padding">
                        <a class="waves-effect waves-grey" href="emp-changepassword.jsp">Change Password</a>
                    </li>
                    <li class="no-padding">
                        <a class="collapsible-header waves-effect waves-grey">Leaves<i class="nav-drop-icon material-icons">keyboard_arrow_right</i></a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="apply-leave.jsp">Apply Leave</a></li>
                                <li><a href="leavehistory.jsp">Leave History</a></li>
                            </ul>
                        </div>
                    </li>
                
         
               
                    <li class="no-padding">
                        <a class="waves-effect waves-grey" href="index.html"><i class="material-icons">exit_to_app</i>Sign Out</a>
                    </li>  
                 
                   
                </ul>
                <div class="footer">
                    <p class="copyright"><a href="http://techcitisoftware.in/"> ELMS </a>�</p>
                
                </div>
                </div>
            </aside>
       
   <main class="mn-inner">
                <div class="row">
                    <div class="col s12">
                        <div class="page-title">View employee</div>
                    </div>
                    <div class="col s12 m12 l12">
                        <div class="card">
                            <div class="card-content">
                                <form id="example-form" method="post" name="updatemp">
                                    <div>
                                        <section>
                                            <div class="wizard-content">
                                                <div class="row">
                                                    <div class="col m6">
             
    <%
try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/elms","root","");
                PreparedStatement ps = con.prepareStatement("SELECT * from  tblemployees where EmailId=?");
                ps.setString(1, n);
                ResultSet rs = ps.executeQuery();
                while(rs.next())
                {    
%>                                                       
<div class="row">
    <div class="input-field col  s12">
        <label for="empcode">Employee Code</label>
        <input  name="empcode" id="empcode" value="<%=rs.getString(2)%>" type="text" autocomplete="off" readonly required>
        <span id="empid-availability" style="font-size:12px;"></span> 
    </div>
    <div class="input-field col m6 s12">
        <label for="firstName">First name</label>
        <input id="firstName" name="firstName" value="<%=rs.getString(3)%>"  type="text" required>
    </div>
    <div class="input-field col m6 s12">
        <label for="lastName">Last name </label>
        <input id="lastName" name="lastName" value="<%=rs.getString(4)%>" type="text" autocomplete="off" required>
    </div>
    <div class="input-field col s12">
        <label for="email">Email</label>
        <input  name="email" type="email" id="email" value="<%=rs.getString("EmailID")%>" readonly autocomplete="off" required>
        <span id="emailid-availability" style="font-size:12px;"></span> 
    </div>
    <div class="input-field col s12">
        <label for="phone">Mobile number</label>
        <input id="phone" name="mobileno" type="tel" value="<%=rs.getString("Phonenumber")%>" maxlength="10" autocomplete="off" required>
    </div>

</div>
</div>
                                                    
<div class="col m6">
    <div class="row">
        <div class="input-field col m6 s12">
            <label for="firstName">Gender</label>
            <input id="firstName" name="firstName" value="<%=rs.getString("Gender")%>"  type="text" required>
        </div>
        <label for="birthdate">Date of Birth</label>
        <div class="input-field col m6 s12">
            <input id="birthdate" name="dob"  class="datepicker" value="<%=rs.getString("Dob")%>" >
        </div>
        <div class="input-field col m6 s12">
            <label for="firstName">Department</label>
            <input id="firstName" name="firstName" value="<%=rs.getString("Department")%>"  type="text" required>
        </div>
        <div class="input-field col m6 s12">
            <label for="address">Address</label>
            <input id="address" name="address" type="text"  value="<%=rs.getString("Address")%>" autocomplete="off" required>
        </div>
        <div class="input-field col m6 s12">
            <label for="city">City/Town</label>
            <input id="city" name="city" type="text"  value="<%=rs.getString("City")%>" autocomplete="off" required>
        </div>
        <div class="input-field col m6 s12">
            <label for="country">Country</label>
            <input id="country" name="country" type="text"  value="<%=rs.getString("Country")%>" autocomplete="off" required>
        </div>
<%
}
                }
               
            
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
%>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                     
                                    
                                        </section>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

        </div>
        <div class="left-sidebar-hover"></div>
        
        <!-- Javascripts -->
        <script src="assets/plugins/jquery/jquery-2.2.0.min.js"></script>
        <script src="assets/plugins/materialize/js/materialize.min.js"></script>
        <script src="assets/plugins/material-preloader/js/materialPreloader.min.js"></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="assets/js/alpha.min.js"></script>
        <script src="assets/js/pages/form_elements.js"></script>
    </body>
</html>