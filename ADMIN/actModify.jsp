<%-- 
    Document   : actModify
    Created on : 19 Feb, 2017, 11:05:39 PM
    Author     : gate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/simple-sidebar.css">
        <script type="text/javascript" src="../js/jquery-3.1.1.min.js" ></script>
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <title>ACT | childAct portal of India</title>
        
        <style>
          
            /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  .navbar {
      margin-bottom: 0px;
      border-radius: 0;
    }
    .l {
      margin-top:10px;
    }
    .dropdown-menu {
    	min-width: 200px;
    }
    .dropdown-menu.columns-2 {
    	min-width: 400px;
    }
    .dropdown-menu.columns-3 {
    	min-width: 600px;
    }
    .dropdown-menu li a {
    	padding: 5px 15px;
    	font-weight: 300;
    }
    .multi-column-dropdown {
    	list-style: none;
    }
    .multi-column-dropdown li a {
    	display: block;
    	clear: both;
    	line-height: 1.428571429;
    	color: #333;
    	white-space: normal;
    }
    .multi-column-dropdown li a:hover {
    	text-decoration: none;
    	color: #262626;
    	background-color: #f5f5f5;
    }
     
    @media (max-width: 767px) {
    	.dropdown-menu.multi-column {
    		min-width: 240px !important;
    		overflow-x: hidden;
    	}
    }
   
    /*#actactive{
        background-color:black;
        color:white;
    }*/

        </style>
     
    </head>
    <body>
        <%
        try {
            HttpSession s=request.getSession();
            String eid=(String)s.getAttribute("eid");
            if(eid==null)
            response.sendRedirect("adminLogin.jsp");
     
    %>
        <div class="container-fluid" style="background-color:#F3F1F1;z-index:25;color:#000000;height:200px;">
            <div class="row text-center" style="padding-top:20px;">
                <a id= "up"href="Home.jsp"><!--<picture>
  <!--[if IE 9]><video style="display: none;"><![endif]
  <source srcset="img/1024.jpg" media="(min-width: 768px)">
  <!--[if IE 9]></video><![endif]
  <img src="images/logo11.png" alt="Image">
</picture>-->
                <picture>
  <!--[if IE 9]><video style="display: none;"><![endif]-->
  <source srcset="images/drawing.svg.png" media="(max-width: 770px)" >
  <!--[if IE 9]></video><![endif]-->
  <img src="../images/logo11.png" style="height:145px;width:100%;"alt="Image">
</picture></a>
            </div>
</div>
       

        
        <nav class="navbar navbar-inverse bg-primary" data-spy="affix" data-offset-top="197" style="z-index:100">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!--<a class="navbar-brand" href="Home.jsp">NCPCR</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="welcomeAdmin.jsp">Home</a></li>
        <li><a href="../AboutUs.jsp">About US</a></li>
        <li  id="actactive" class="dropdown">
	            <a  href="#" class="dropdown-toggle" data-toggle="dropdown">Acts <b class="caret"></b></a>
	            <ul class="dropdown-menu multi-column columns-3">
                        <form action="ACT.jsp" method="post" id="nav_form"name="nav_form">
                            <input id="navActId"type="text" name="navActId" style="display:none;" />
		           <div class="row">
    <%
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/childacts","root","root");
        Statement st= con.createStatement();
        String sql = "SELECT Act_ID, Act_Name FROM acts";
        ResultSet rs=st.executeQuery(sql);
        String actname;
        while(rs.next()){
            out.print("<div class='col-sm-4'>"
            +"<ul class='multi-column-dropdown'>");
            // for(int j=1;j<=6;j++){
            actname = rs.getString(2);
            out.print("<li><a type='submit' onclick='navForm("+ rs.getInt(1) + ")'href='#'>"+ actname.substring(0, 10) +"</a></li>");
            // }
            out.print("</ul></div>");
        }
    %>
		            </div>
                        </form>
	            </ul>
	        </li>
        <li><a href="../ComplaintUs.jsp">Complaint US</a></li>
        <li><a href="../FAQ.jsp">FAQ</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> User's Location</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Search</a></li> -->
        <form class="form-inline l">
    <input type="email" class="form-control" size="20" placeholder="Search">
    <a href="#"><button type="button" class="btn btn-info" style="background-color:#337ab7;border-color: #337ab7;">
      <span class="glyphicon glyphicon-search"></span> Search
    </button></a>
    <!-- <button type="button" style="background-color:#337ab7;"class="btn btn-danger">Search</button>-->
  </form>
      </ul>
    </div>
  </div>
</nav>
                            <label style="float:right;"><%out.print("welcome "+eid+"<br><br>");%></label><br> 
                            <a style="float:right;" href="logout.jsp">logout</a>
    <center><div class="panel-group" style='padding-top:5%;width:50%;'>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse1">changeAct</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body"><div class="form-group">
  <label for="sel1">Select Act to Change:</label>
  <form action="../ActModification" method ="post">
  <select class="form-control" id="sel1" name ="actIdSelect" onchange="dropSelect(this)">
      <option value=""></option>
    <%
        rs=st.executeQuery(sql);
        while(rs.next()){
            actname = rs.getString(2);
            int actID = rs.getInt(1);
            out.print("<option value = " + actID +" >" + actname + "</option>");
        }                            
    %>
      
  </select>
    
  <label for="usr">Act Description:</label>
    <%
        String message = request.getParameter("selectValue"); 
        String sql2 = "select * from acts where Act_ID = '" + message + "'";
        rs = st.executeQuery(sql2);
        String ActData = "";
        if (rs.next()){
            ActData = rs.getString(3);
        }
        //out.println(message); 
    %> 
    <input type="hidden" value ="<%=message%>" name ="hiddenBox">
        <textarea class="form-control" id="actData" rows="10" cols="10" name ="actData"><%= ActData %></textarea>
        <div class="panel-footer"><button class='btn btn-primary'>change</button></div>
  </form>
            </div></div>
      
      
    </div>
  </div>
        </div></center>
        
         <center><div class="panel-group" style='width:50%;'>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse2">Delete Act</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body"><div class="form-group">
  <label for="sel1">Select Act to Delete:</label>
  <select class="form-control" id="sel1">
    <option value=""></option>
    <%
        rs=st.executeQuery(sql);
        while(rs.next()){
            actname = rs.getString(2);
            int actID = rs.getInt(1);
            out.print("<option value = " + actID +" >" + actname + "</option>");
        }                            
    %>
  </select>
</div></div>
      <div class="panel-footer"><button class='btn btn-primary'>Delete</button></div>
    </div>
  </div>
        </div></center>
        
        <center><div class="panel-group" style='width:50%;'>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse3">Add Act</a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body"><div class="form-group">
  <label for="usr">Act Name:</label>
  <input type="text" class="form-control" id="usr">
  <label for="usr">Act Description:</label>
  <textarea class="form-control" id="usr" rows="10" cols="10"></textarea>
            </div></div>
      <div class="panel-footer"><button class='btn btn-primary'>Add Act</button></div>
    </div>
  </div>
        </div></center>
                            
                            
                            
                             <hr>
                            
                            <div class="container-fluid ">
        <footer>
            <div class="row" >
                <div class="col-lg-6">
                    <p>Copyright &copy; ChildAct Portal of India 2017</p>
                </div>
                <div class="col-lg-6">
                    <h3><strong>made by SPARTANDROIDS</strong></h3>
                </div>
            </div>
        </footer>
             </div>
                            
                            
                            <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
                            
                            <script>
            
            $('ul.nav li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
});

function navForm(i){
    document.getElementById("navActId").value =i;
    document.getElementById("nav_form").submit();
    
}
function dropSelect(actID) {
        var selectedValue = actID.value;
        //alert("Value: " + selectedValue);
        window.location.replace("actModify.jsp?selectValue="+ selectedValue); 
                                
        
    //document.getElementById("actData").value = "";
}
        </script>
    <%
        }
        catch(Exception e){
            out.print("The error is " + e);
        }
        %>
    </body>
</html>
