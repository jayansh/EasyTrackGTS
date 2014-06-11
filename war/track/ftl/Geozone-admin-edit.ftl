<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>GeoZone Admin|Easy Track GTS</title>

    <#include "header.ftl">


  </head>

  <body>
      
      
      
    <#include "menubar.ftl">
   <div class="use-sidebar sidebar-at-left" id="main" style="margin-top:20px; ">
    <div id="sidebar">
      <div class="calendar">
           <form class="form-horizontal">
           <label> GeoZone</label>
          
             <input class="form-control" type="text"/>
             
              
        
<label>Description(Address)</label>
 <input class="form-control" type="text"/>
 <input class="form-control" type="checkbox"/>Reverse GeoCode
 <input class="form-control" type="checkbox"/>Arrival Zone
 <input class="form-control" type="checkbox"/>Departure Zone
 <label>Zone Color</label>
 <select class="form-control">
 <option>Defualt</option>
 <option>Black</option>
 
<option>Brown</option>
<label>Radius(meters)</label>
<input class="form-control" type="text"/>
<label>Lat/Lon</label>
<input class="form-control" type="text"/>
<input class="form-control" type="text"/>
<button class="btn btn-primary btn-sm">Reset Map</button>

<label>cursor </label>
Value1,Value2
<label>Distance</label>
0 meters
<button class="btn btn-primary btn-sm">Change</button>
<button class="btn btn-primary btn-sm">Cancel</button>
</form>

<!-- Main component for a primary marketing message or call to action -->
 </div>
 </div>
    <div id="content">
     <iframe 
  width="600"
  height="400"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/search?key=AIzaSyAXiYvo3JTOOaaJ3Dv-sQRqJOuHGwB1cT4&q=Mahakaleshwar+Temple+ujjain+madhyapradesh+India">
</iframe>



    </div> <!-- /container -->

   <#include "footer.ftl">
  </body>
</html>
