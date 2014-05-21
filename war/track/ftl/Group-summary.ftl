<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Group Summary|Easy Track GTS</title>

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
            <a class="navbar-brand" href="#">GPS Tracking</a>
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
     
 <!-- Main component for a primary marketing message or call to action -->
 <div class="sidebar " style="margin-left: 250px;">
<div class="col-md-8 ">
 <div class="panel panel-primary">
    <div class="panel-heading">Easy Track GTS</div>
    <div class="panel-body">
        
   
       <form class="form-horizontal">
               <label>Vehicle</label>
          <select class="form-control input-lg">
              
              <option> Device Name</option>
              <option>Device Name </option>
          </select>
      
         
      
 
            
      
      
          <p id="basicExample">
    <input type="text" class="date start form-control input-lg"  />
    <input type="text" class="time start form-control input-lg"/> 
    <label>to</label>
    
    <input type="text" class="date end form-control input-lg"  />
    <input type="text" class="time end form-control input-lg"  />
</p>
 <script>
     // initialize input widgets first
    $('#basicExample .time').timepicker({
        'showDuration': true,
        'timeFormat': 'g:ia'
    });

    $('#basicExample .date').datepicker({
        'format': 'm/d/yyyy',
        'autoclose': false
    });

    // initialize datepair
    $('#basicExample').datepair();
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
  


    <h5>Group Summary</h5>
    <label>Last Known Vehicle Location</label> 
    <input onclick="document.getElementById('eventcount').disabled = true; " type="radio" id="groupdetail" name="groupsummary">
  
    <br> <label>Received Event Count</label> 
    <input onclick="document.getElementById('eventcount').disabled = false; " type="radio"  id="speedover"  value="Speed Over" name="groupsummary"/>
  <select id="eventcount" class="form-control input-sm" style="width:25%;margin-top: 5px;">
     <option>All</option>
     <option>Initialization</option>
     <option>In Motion</option>
 </select>
 
    
    <label>Format</label> 
    <select class="form-control input-lg">
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
