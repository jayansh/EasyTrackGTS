<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Account Admin|Easy Track GTS</title>

     <#include "header.ftl">
      
  </head>

  <body>
      
      
      
    <div class="container">
<!-- <div class="header">
     
     <img style="margin-top:20px;" src="../images/logo.png" width="143" height="50" alt="jaysan"/>
        
  <div id="welcomeuser">
    <p>Welcome Username</p>
<button type="button" class="btn btn-sm btn-primary">Logout</button>
  
                 
                 
   </div>
      </div>-->
        
	  </div>
	  
	<#include "menubar.ftl">
            <div class="sidebar " style="margin-left: 250px;">
<div class="col-md-8 ">
 <div class="panel panel-primary">
    <div class="panel-heading">Edit Account Information</div>
    <div class="panel-body">
        
   
       <form class="form-horizontal">
           <label>Account ID</label>
           <input type="text" value="" class=" form-control input-lg"/>
           <label>Account Description</label>
           <input type="text" value="" class="form-control input-lg"/>
           <label>Account Name</label>
           <input type="text" value="" class="form-control input-lg"/>
            <label>Contact Name</label>
           <input type="text" value="" class="form-control input-lg"/>
            <label>Contact Phone</label>
           <input type="text" value="" class="form-control input-lg"/>
            <label>Contact Email</label>
           <input type="text" value="" class=" form-control input-lg"/>
            <label>Notify Email</label>
           <input type="text" value="" class="form-control input-lg"/>
             <label>Time Zone</label>
             <select  class="form-control input-lg">
   <option value="US/Hawaii">US/Hawaii</option>
  <option value="US/Alaska">US/Alaska</option>
  <option value="US/Pacific">US/Pacific</option>
  <option value="US/Arizona">US/Arizona</option>
  <option value="US/Mountain">US/Mountain</option>
  <option value="US/Central">US/Central</option>
  <option value="US/Eastern">US/Eastern</option>
  <option value="Canada/Pacific">Canada/Pacific</option>
  <option value="Canada/Mountain">Canada/Mountain</option>
  <option value="Canada/Central">Canada/Central</option>
  <option value="Canada/Eastern">Canada/Eastern</option>
  <option value="Canada/Atlantic">Canada/Atlantic</option>
  <option value="Mexico/BajaNorte">Mexico/BajaNorte</option>
  <option value="Mexico/BajaSur">Mexico/BajaSur</option>
  <option value="Mexico/General">Mexico/General</option>
  <option value="Europe/Athens">Europe/Athens</option>
  <option value="Europe/Berlin">Europe/Berlin</option>
  <option value="Europe/Dublin">Europe/Dublin</option>
  <option value="Europe/Helsinki">Europe/Helsinki</option>
  <option value="Europe/Kiev">Europe/Kiev</option>
  <option value="Europe/Lisbon">Europe/Lisbon</option>
  <option value="Europe/London">Europe/London</option>
  <option value="Europe/Madrid">Europe/Madrid</option>
  <option value="Europe/Moscow">Europe/Moscow</option>
  <option value="Europe/Oslo">Europe/Oslo</option>
  <option value="Europe/Paris">Europe/Paris</option>
  <option value="Europe/Rome">Europe/Rome</option>
  <option value="Europe/Stockholm">Europe/Stockholm</option>
  <option value="Europe/Zurich">Europe/Zurich</option>
  <option value="GMT" selected="selected">GMT</option>
  <option value="GMT+00:00">GMT+00:00</option>
  <option value="GMT+01:00">GMT+01:00</option>
  <option value="GMT+02:00">GMT+02:00</option>
  <option value="GMT+03:00">GMT+03:00</option>
  <option value="GMT+04:00">GMT+04:00</option>
  <option value="GMT+05:00">GMT+05:00</option>
  <option value="GMT+05:30">GMT+05:30</option>
  <option value="GMT+06:00">GMT+06:00</option>
  <option value="GMT+07:00">GMT+07:00</option>
  <option value="GMT+08:00">GMT+08:00</option>
  <option value="GMT+09:00">GMT+09:00</option>
  <option value="GMT+10:00">GMT+10:00</option>
  <option value="GMT+11:00">GMT+11:00</option>
  <option value="GMT+12:00">GMT+12:00</option>
  <option value="GMT+13:00">GMT+13:00</option>
  <option value="GMT+14:00">GMT+14:00</option>
  <option value="GMT-01:00">GMT-01:00</option>
  <option value="GMT-02:00">GMT-02:00</option>
  <option value="GMT-03:00">GMT-03:00</option>
  <option value="GMT-04:00">GMT-04:00</option>
  <option value="GMT-05:00">GMT-05:00</option>
  <option value="GMT-06:00">GMT-06:00</option>
  <option value="GMT-07:00">GMT-07:00</option>
  <option value="GMT-08:00">GMT-08:00</option>
  <option value="GMT-09:00">GMT-09:00</option>
  <option value="GMT-10:00">GMT-10:00</option>
  <option value="GMT-11:00">GMT-11:00</option>
  <option value="GMT-12:00">GMT-12:00</option>
</select>
  <label>Speed Units</label>
  <select  class="form-control input-lg">
      <option>mph</option>
      <option>km/h</option>
      <option>knots</option>
  </select>
  <label>Distance Units</label>
  <select  class="form-control input-lg">
      <option>miles</option>
      <option>km</option>
      <option>Nm</option>
  </select>
  <label>Volume Units</label>
  <select  class="form-control input-lg">
      <option>gal</option>
      <option>liter</option>
      <option>IG</option>
  </select>
  <label>Economic Units</label>
  <select  class="form-control input-lg">
      <option>mpg</option>
      <option>km/L</option>
      <option>kpg</option>
  </select>
  <label>Pressure Units</label>
  <select  class="form-control input-lg">
      <option>KPa</option>
      <option>psi</option>
      <option>mmHg</option>
  </select>
  <label>Temperature Units</label>
  <select  class="form-control input-lg">
      <option>F</option>
      <option>C</option>
      
  </select>
   <label>Latitude/Longitude Format:</label>
  <select  class="form-control input-lg">
      <option>Degrees</option>
      <option>Deg:Min:Sec</option>
       <option>Deg:Min</option>
      
  </select>
    <label>'Device' Title</label>
           <input type="text" value="" class=" form-control input-lg"/>   
           <label>'DeviceGroup' Title</label>          
           <input type="text" value="" class="form-control input-lg"/> 
           <label>'Address' Title</label>          
           <input type="text" value="" class="form-control input-lg"/> 
           <label>Default Login User ID</label>          
           <input type="text" value="" class=" form-control input-lg"/> 
           <input type="submit" value="Change" class="btn btn-primary btn-lg" style="margin-top:5px;"/>
           <button class="btn btn-danger btn-lg" style="margin-top: 5px;">Cancel</button>
      
       </form>
            
    </div>
 </div>
</div>
            </div>
  <#include "footer.ftl">
  </body>
</html>