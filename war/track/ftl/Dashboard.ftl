<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>DashBoard|Easy Track GTS</title>

    <#include "header.ftl">
    <![endif]-->
  </head>

  <body>
      
      
      
   
	  
	  
      <#include "menubar.ftl">
      
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
   <#include "footer.ftl">
  </body>
</html>
