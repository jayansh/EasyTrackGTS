<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Change Password</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/navbar.css" rel="stylesheet">
      <link href="../css/style.css" rel="stylesheet">
      <link href="../css/sticky-footer.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <script src="http://jonthornton.github.io/jquery-timepicker/jquery.timepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="http://jonthornton.github.io/jquery-timepicker/jquery.timepicker.css" />

    <script src="../lib/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap-datepicker.css" />

    <script src="lib/pikaday.js"></script>
    <link rel="stylesheet" type="text/css" href="../lib/pikaday.css" />

    <script src="lib/jquery.ptTimeSelect.js"></script>
    <link rel="stylesheet" type="text/css" href="../lib/jquery.ptTimeSelect.css" />
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css" type="text/css" media="all" />

    <script src="../lib/moment.min.js"></script>
    <script src="../lib/site.js"></script>
    <link rel="stylesheet" type="text/css" href="../lib/site.css" />

    <script src="../js/jquery.datepair.js"></script>
      
  </head>

  <body>
      
      
      
    <div class="container">
 <!--<div class="header">
     
     <img style="margin-top:20px;" src="../images/logo.png" width="143" height="50" alt="jaysan"/>
        
  <div id="welcomeuser">
    <p>Welcome Username</p>
<button type="button" class="btn btn-sm btn-primary">Logout</button>
  
                 
                 
   </div>
      </div>-->
        
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
              <li class="active"><a href="Dashboard.html">Home</a></li>
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
                  <li><a href="#">Vehicle Detail</a></li>
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
     
    
            <div class="sidebar ">
<!--<div class="col-md-8 ">-->
 <div class="panel panel-primary">
    <div class="panel-heading">Change Your Password</div>
    <div class="panel-body">
        <form class="form-group">
            <label>Old Password</label>
            <input class="form-control input-lg" type='text'/>
             <label>New Password</label>
            <input class="form-control input-lg" type='text'/>
             <label>Confirm Password</label>
            <input class="form-control input-lg" type='text'/>
            <input type="submit" value="Change" class="btn btn-primary" style="margin-top: 10px;"/>
            <button type='submit' class="btn btn-primary" style="margin-top: 10px;"> Cancel</button>
                    
                   
        </form>
    </div>
 </div>
            </div>
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