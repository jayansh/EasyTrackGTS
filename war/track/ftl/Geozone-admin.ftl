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