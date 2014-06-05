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
                  <option value="GMT-08:00">GMT-08:00</option>
                  <option value="GMT-09:00">GMT-09:00</option>
                </select>
              <label>Speed Units</label>
                <select  class="form-control input-lg">
                  <option>mph</option>
                  <option>km/h</option>
                  <option>knots</option>
                </select>
              <label>Distance Units</label>
                <select class="form-control input-lg">
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