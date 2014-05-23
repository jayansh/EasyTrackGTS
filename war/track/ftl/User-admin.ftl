<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>User Admin|Easy Track GTS</title>

    <#include "header.ftl">
      
  </head>

  <body>
      
      
      
    <#include "menubar.ftl">
            <div class="sidebar ">
<!--<div class="col-md-8 ">-->
 <div class="panel panel-primary">
    <div class="panel-heading">View/Edit User Information</div>
    <div class="panel-body">
        <div class="table-responsive">
<table class="table">
    Select User:
<thead>
<tr>

<th>Select</th>
<th>User ID</th>
<th>User Desc</th>
<th>Contact Name</th>
<th>Contact Email</th>
<th>Time Zone</th>
<th>Active</th>
<th>Last Login GMT</th>
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
</tr>
<tr>
<td>2</td>
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
</tr>
</tbody>
</table>
            <button class="btn btn-success btn-lg">View</button>
             <button class="btn btn-info btn-lg">Edit</button> 
              <button class="btn btn-danger btn-lg">Delete</button> 
              <br><div style="margin-top:10px;">Create New User:</div>
              <label> User ID</label>
              <input type="text" class="form-control input-lg"/>
              <button class="btn btn-primary btn-lg" style="margin-top: 5px;">New</button>
</div>
    </div>
 </div>
</div>
    <#include "footer.ftl">
  </body>
</html>             