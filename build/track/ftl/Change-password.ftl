<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Change Password|Easy Track GTS</title>

     <#include "header.ftl">
      
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
            <a class="navbar-brand" href="#">Easy Track GTS</a>
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
              <a href="#"><img style="float:right; margin-top:10px;" src="../images/logout-icon.png" width='40'height='40'/></a>
             <form class="navbar-form navbar-right" style="margin-right:10px;">
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
           <#include "footer.ftl">
  </body>
</html>