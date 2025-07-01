<!DOCTYPE html>
<html lang="en">
    <head>
        
        <!-- Title -->
        <title>Admin | Add Department</title>
        
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
                            <span class="chapter-title">ELMS | Admin</span>
                        </div>
                      
                        <ul class="right col s9 m3 nav-right-menu">
                        
                            
                                <span class="badge"></span></a></li>
                            <li class="hide-on-med-and-up"><a href="javascript:void(0)" class="search-toggle"><i class="material-icons">search</i></a></li>
                        </ul>
                        
                        <ul id="dropdown1" class="dropdown-content notifications-dropdown">
                            <li class="notificatoins-dropdown-container">
                                <ul>
                                    <li class="notification-drop-title">Notifications</li>

                                   
                                  
                        </ul>
                    </div>
                </nav>
            </header>
            
     <aside id="slide-out" class="side-nav white fixed">
                <div class="side-nav-wrapper">
                    <div class="sidebar-profile">
                        <div class="sidebar-profile-image">
                            <img src="assets/images/profile-image.png" class="circle" alt="">
                        </div>
                        <div class="sidebar-profile-info">
                       
                                

                         
                        </div>
                    </div>
            
                <ul class="sidebar-menu collapsible collapsible-accordion" data-collapsible="accordion">
                    <li class="no-padding"><a class="waves-effect waves-grey" href="dashboard.html">Dashboard</a></li>
                    <li class="no-padding">
                        <a class="collapsible-header waves-effect waves-grey">Department</a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="adddepartment.jsp">Add Department</a></li>
                                <li><a href="managedepartments.jsp">Manage Department</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="no-padding">
                        <a class="collapsible-header waves-effect waves-grey">Leave Type</a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="addleavetype.jsp">Add Leave Type</a></li>
                                <li><a href="manageleavetype.jsp">Manage Leave Type</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="no-padding">
                        <a class="collapsible-header waves-effect waves-grey">Employees</a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="addemployee.jsp">Add Employee</a></li>
                                <li><a href="manageemployee.jsp">Manage Employee</a></li>
       
                            </ul>
                        </div>
                    </li>

   <li class="no-padding">
                        <a class="collapsible-header waves-effect waves-grey">Leave Management</a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="leaves.jsp">All Leaves </a></li>
                                <li><a href="pending-leavehistory.jsp">Pending Leaves </a></li>
                                <li><a href="approvedleave-history.jsp">Approved Leaves</a></li>
                                  <li><a href="notapproved-leaves.jsp">Not Approved Leaves</a></li>
       
                            </ul>
                        </div>
                    </li>


  <li class="no-padding"><a class="waves-effect waves-grey" href="changepassword.jsp">Change Password</a></li>

                        <li class="no-padding">
                                <a class="waves-effect waves-grey" href="index.html">Sign Out</a>
                            </li>  
                 

                 
              
                </ul>
                   <div class="footer">
                    <p class="copyright"><a href="http://techcitisoftware.in">ELMS </a>©</p>
                
                </div>
                </div>
            </aside>
                   <main class="mn-inner">
                <div class="row">
                    <div class="col s12">
                        <div class="page-title">Add Leave Type</div>
                    </div>
                    <div class="col s12 m12 l6">
                        <div class="card">
                            <div class="card-content">
                              
                                <div class="row">
                                    <form class="col s12" name="chngpwd" method="post" action="addleave">
                                         
                                        <div class="row">
                                            <div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="leavetype"  required>
                                                <label for="leavetype">Leave Type</label>
                                            </div>


          <div class="input-field col s12">
<textarea id="textarea1" name="description" class="materialize-textarea" name="description" length="500"></textarea>
                                                <label for="deptshortname">Description</label>
                                            </div>




<div class="input-field col s12">
<button type="submit" name="add" class="waves-effect waves-light btn indigo m-b-xs">ADD</button>

</div>




                                        </div>
                                       
                                    </form>
                                </div>
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
