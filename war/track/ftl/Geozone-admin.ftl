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
    <div class="panel-heading">View/Edit Geozone Information</div>
    <div class="panel-body">
        <div class="table-responsive">
<table class="table">
    Select a Geozone:
<thead>
<tr>

<th>Select</th>
<th>Geozone ID</th>
<th>Description(Address)</th>
<th>Zone Type</th>
<th>Reverse GeoCode</th>
<th>Arrival Zone</th>
<th>Departure Zone</th>
<th>Radius(meters)</th>
<th>Center Latitude/longitude</th>

</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>


</tr>
<tr>
<td>2</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>



</tr>
<tr>
<td>3</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>
<td>Table cell</td>



</tr>
</tbody>
</table>
            <button class="btn btn-success btn-lg">View</button>
             <button class="btn btn-info btn-lg">Edit</button> 
              <button class="btn btn-danger btn-lg">Delete</button> 
              <br><div style="margin-top:10px;">Create New Geozone:</div>
              <label> Geozone ID</label>
              <input type="text" class="form-control input-lg"/>
              <select class="form-control"data-style="btn-primary">
                  <option>PointRadius</option>
                  <option>Polygon</option>
              </select>
              <button class="btn btn-primary btn-lg" style="margin-top: 5px;">New</button>
</div>
    </div>
 </div>
</div>
 <#include "footer.ftl">
  </body>
</html>             