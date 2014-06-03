<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Performance|Easy Track GTS</title>

     <#include "header.ftl">
      
  </head>

  <body>
      
      
      
   <#include "menubar.ftl">
    
            <div class="sidebar">
<div class="col-md-8 ">
 <div class="panel panel-primary">
    <div class="panel-heading">GPS Tracking Reports</div>
    <div class="panel-body">
        
   
       <form class="form-horizontal">
           <label>Vehicle</label>
          <select class="form-control input-lg">
              <option> Device Name</option>
              <option>Device Name </option>
          </select>
  <div class="input-group date">
   <input class="form-control" type="text" placeholder="From Date" id="datetimepicker">
                                    
   </div>
                                 
  <div class="input-group date" >
  <input  class="form-control" type="text" placeholder="To Date" id="datetimepicker1">
                                    
 </div>
                            
<script type="text/javascript">
jQuery('#datetimepicker').datetimepicker();
    jQuery('#datetimepicker1').datetimepicker();
</script>
<label>Time Zone:</label>
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
 
      
          
      

<h5>Performance</h5>
<label>Vehicle Excess Speed</label>
<input onclick="document.getElementById('speed').disabled = true; " type="radio" id="vehiclespeed" name="groupsummary">
  
<br> <label> Speed Over</label>
    <input onclick="document.getElementById('speed').disabled = false; " type="radio"  id="speedover"  value="Speed Over" name="groupsummary"/>
  <select id="speed" class="form-control input-lg" style="width:25%;margin-top: 5px;">
      <option>45 mph</option>
     <option>50 mph</option>
     <option>55 mph</option>
 </select>
 
    
  <label>Format </label>
  <select class="form-control input-lg" >
     <option>HTML</option>
     <option>CSV</option>
     <option>XML</option>
 </select>
 <button class="btn btn-info btn-sm" style="margin-top: 5px;">Get Report</button>
       </form>
    </div>
 </div>
</div>
            </div>
    <#include "footer.ftl">
  </body>
</html>
