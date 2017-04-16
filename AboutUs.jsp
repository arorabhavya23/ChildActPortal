<%-- 
    Document   : AboutUs
    Created on : 31 Jan, 2017, 9:49:43 PM
    Author     : gate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/simple-sidebar.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <title>About Us| childAct portal of India</title>
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
        </style>
     
    </head>
    <body>
        <div class="container-fluid" style="background-color:#F3F1F1;height:200px;">
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
  <img src="images/logo11.png" style="height:145px;width:100%;"alt="Image">
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
        <li><a href="Home.jsp">Home</a></li>
        <li class="active"><a href="AboutUs.jsp">About US</a></li>
        <li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Acts <b class="caret"></b></a>
	            <ul class="dropdown-menu multi-column columns-3">
                        <form action="ACT.jsp" method="post" id="nav_form"name="nav_form">
                            <input id="navActId"type="text" name="navActId" style="display:none;" />
		           <div class="row">
                               <%
                                   int k=1;
                               for(int i=1;i<=3;i++){
                                   out.print("<div class='col-sm-4'>"
                                   +"<ul class='multi-column-dropdown'>");
                                   for(int j=1;j<=6;j++){
                                       
                                      out.print("<li><a type='submit' onclick='navForm("+k+")'href='#'>Act "+k+"</a></li>");
                                      k++;
                                   }
                                   out.print("</ul></div>");
                               }
                               %>
		            </div>
                        </form>
	            </ul>
	        </li>
        <li><a href="ComplaintUs.jsp">Complaint US</a></li>
        <li><a href="FAQ.jsp">FAQ</a></li>
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
        
        <div class="container-fluid">
            <center style="padding-top:15%;"><h1>About Us</h1>
             <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br></center>
        </div>
        
        
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
        
        <script>
            $('ul.nav li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
});



//sending act id using navbar form
function navForm(i){
    document.getElementById("navActId").value =i;
    document.getElementById("nav_form").submit();
    
}
        </script>
       
    </body>
</html>
