<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>DashBoard</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/navbar.css" rel="stylesheet">
      <link href="../css/style.css" rel="stylesheet">
      <link href="../css/sticky-footer.css" rel="stylesheet">
            <link href="../css/dashboard.css" rel="stylesheet">


    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      
      
      
    <div class="container">
 
	  </div>
	  
	  
      <!-- Static navbar -->
      <div class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">GPS Tracking</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
             <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mapping <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="Vehicle-map.html">Vehicle Map</a></li>
                  <li><a href="Group-map.html">Group Map</a></li>
                </ul>
             </li>
             <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="Vehicle-detail.html">Vehicle Detail</a></li>
                  <li><a href="#">Group Detail</a></li>
                  <li><a href="#">Group Summary</a></li>
                <li><a href="#">Performance</a></li>
                </ul>
             </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administration <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Account Admin</a></li>
                  <li><a href="#">User Admin</a></li>
                  <li><a href="#">Vehicle Admin</a></li>
                  <li><a href="#">Group Admin</a></li>
                  <li><a href="#">GeoZone Admin</a></li>
                  <li><a href="#">Change Password</a></li>
                
                     </ul>
              </li>
            </ul>
             <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
  
              </form>
      
          </div><!--/.nav-collapse -->
           
        </div><!--/.container-fluid -->
        
      </div>
      
      <div class="dashboard" >
          <div class="navbar">
            <ul class="nav nav-justified">
              
                <li >   <a href="#"><img  style="margin-right:150px;"src="../images/map.gif" width="200" height="200"/></a> 
                    <button class="btn btn-primary"style="margin-left:20px;" onclick="window.location.href='Vehicle-map.html'" >Vehicle Map</button>
                <button class="btn btn-primary" onclick="window.location.href='Group-map.html'">Group Map</button>
                </li>
              
              <li>   <a href="#"><img style="margin-right:150px;" src="../images/reports.png" width="200" height="200"/></a>
              
              <button class="btn btn-primary" style="margin-left:20px; " onclick="window.location.href='Vehicle-detail.html'">Vehicle Detail</button>
                <button class="btn btn-primary" >Group Detail</button>
                <br> <button class="btn btn-primary"  style="margin-top:10px; margin-left:20px;" onclick="window.location.href='Group-summary.html'">Group Summary</button>
                  <button class="btn btn-primary" style="margin-top:10px;" onclick="window.location.href='performance.html'">Performance</button>
              
              </li>
              
              <li ><a href="#"><img style="margin-right:150px;" src="../images/user-admin-1.png" width="200" height="200"/></a>
              <button class="btn btn-primary" style="margin-left:20px; " onclick="window.location.href='Account-admin.html'">Account Admin</button>
                <button class="btn btn-primary">User Admin</button>
                <br> <button class="btn btn-primary" style="margin-top:10px;margin-left:20px; " onclick="window.location.href='Vehicle-admin.html'">Vehicle Admin</button>
                  <button class="btn btn-primary" style="margin-top:10px; "onclick="window.location.href='#'">Group Admin</button>
               <br> <button class="btn btn-primary" style="margin-top:10px; margin-left:20px;" onclick="window.location.href='#'">GeoZone Admin</button>
                  <button class="btn btn-primary" style="margin-top:10px;" onclick="window.location.href='#'">Change Password</button>
              </li>
            </ul>
          
            
              
              </div>
                      
              
      
     
 <!-- Main component for a primary marketing message or call to action -->
      

    <!-- /container -->
    <div id="footer">
      <div class="container">
        <p class="text-muted">copyright 2014.</p>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../js/bootstrap.js"></script>
  </body>
</html>
