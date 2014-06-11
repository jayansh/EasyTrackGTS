<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Vehicle Admin|Easy Track GTS</title>

    <#include "header.ftl">
      
  </head>

  <body>
      
      
      
    <#include "menubar.ftl">
            <div class="sidebar ">
<!--<div class="col-md-8 ">-->
 <div class="panel panel-primary">
    <div class="panel-heading">View/Edit Vehicle Information</div>
    <div class="panel-body">
        <form method="post" action="" name="">
        <label>Vehicle ID</label>
        <input type="text" name="" class="form-control"/>
        <label>Creation Date</label>
        <input type="text" name="" class="form-control"/>
        <label>Server ID</label>
        <input type="text" name="" class="form-control"/>
        <label>Firmware Version</label>
        <input type="text" name="" class="form-control"/>
        <label>Unique ID</label>
        <input type="text" name="" class="form-control"/>
        <label>Active</label>
        <select class="form-control input-lg">
        <option>Yes</option>
        <option>No</option>
        </select>
        <label>Vehicle Description</label>
        <input type="text" name="" class="form-control"/>
        <label>Short Name</label>
        <input type="text" name="" class="form-control"/>
        <label>Vehicle ID</label>
        <input type="text" name="" class="form-control"/>
        <label>Vehicle Make</label>
        <input type="text" name="" class="form-control"/>
        <label>Vehicle Model</label>
        <input type="text" name="" class="form-control"/>
        <label>License Plate</label>
        <input type="text" name="" class="form-control"/>
        
        <label>License Expiration</label>
        <input type="text" name="" class="form-control"/>
        <label>Equipment Type</label>
        <input type="text" name="" class="form-control"/>
   <label>Equipment Status</label>
        <select class="form-control input-lg" name="">
        <option> Unspecified</option>
        <option>In Service</option>
        <option>Rented</option>
        <option>Unavailable</option>
        <option>Available</option>
        <option>Repair</option>
        <option>Retired</option>
        </select>        
        <label>IMEI/ESN Number</label>
        <input type="text" name="" class="form-control"/>
        <label>Serial Number</label>
        <input type="text" name="" class="form-control"/>
         <label>Sim Phone#</label>
        <input type="text" name="" class="form-control"/>
  <label>SMS Email Address</label>
        <input type="email" name="" class="form-control"/>
        
        <label>Map Route Color</label>
        <select class="form-control input-lg" name="">
        <option> Default</option>
        <option> Black</option>
        <option> Brown</option>
        <option> Red</option>
        <option> Orange</option>
        <option> Green</option>
        <option> Blue</option>
        <option> Purple </option>
        <option> Gray</option>
        <option> Cyan</option>
        <option> Pink</option>
        <option> None</option>
        </select>
         <label>Fuel Capacity</label>
         <input type="text" name="" class="form-control"/> gal
        <label>Driver ID </label>
         <input type="text" name="" class="form-control"/>
        <label>Reported Odometer</label>
         <input type="text" name="" class="form-control"/>Miles[offset 0.0]
         <label>Reported Engine Numbers</label>
         <input type="text" name="" class="form-control"/>Miles[offset 0.00]
         Group Membership:
         All Vehicles(All)<input type="checkbox" name=""/>
        <button class="btn btn-primary btn-lg" >Change</button>
        <button class="btn btn-primary btn-lg" >Cancel</button>
        
        </form>
        
        
    </div>
 </div>
</div>
    <#include "footer.ftl">
  </body>
</html>             