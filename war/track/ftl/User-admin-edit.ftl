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
        <form method="post" action="" name="">
        <label>User ID</label>
        <input type="text" name="" class="form-control"/>
        <label>Active</label>
        <select class="form-control input-lg">
        <option>Yes</option>
        </select>
        <label>User Description</label>
        <input type="text" name="" class="form-control"/>
        <label>Password</label>
        <input type="text" name="" class="form-control"/>
        <label>Contact Name</label>
        <input type="text" name="" class="form-control"/>
        
        <label>Contact Phone</label>
        <input type="text" name="" class="form-control"/>
        <label>Contact Email</label>
        <input type="email" name="" Class="form-control"/>
   <label>Notify Email</label>
        <input type="email" name="" Class="form-control"/>
        <label>TimeZone</label>
        <select class="form-control input-lg" name="">
        <option> GMT</option>
        </select>
        <label>Authorize Group</label>
        <select class="form-control input-lg" name="">
        <option> All</option>
        </select>
         <label>First Login Page</label>
        <select class="form-control input-lg" name="">
        <option>Main Menu</option>
         <option>Device Map</option>
         <option>Fleet Map</option>
         <option>Detail Reports</option>
         <option>Fleet Reports</option>
        </select>
  <label>Maximum Access Level</label>
        <select class="form-control input-lg" name="">
        <option>New/Delete</option
        </select>
        User Access Control
        <label>Account Administration</label>
        <select class="form-control input-lg" name="">
        <option> Write/Edit</option>
        </select>
         <label>User Administration(Current User)</label>
        <select class="form-control input-lg" name="">
        <option> Write/Edit</option>
        </select>
        <label>User Administration(All Users)</label>
        <select class="form-control input-lg" name="">
        <option> Write/Edit</option>
        </select>
        <label>User Administration (ACL access)</label>
        <select class="form-control input-lg" name="">
        <option> Write/Edit</option>
        </select>
        <button class="btn btn-primary btn-lg" >Change</button>
        <button class="btn btn-primary btn-lg" >Cancel</button>
        
        </form>
        
        
    </div>
 </div>
</div>
    <#include "footer.ftl">
  </body>
</html>             