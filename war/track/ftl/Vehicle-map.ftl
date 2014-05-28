<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Vehicle Map|Easy Track GTS</title>

     <#include "header.ftl">
  </head>

  <body>
  <!-- Command form -->
  <form id='${FORM_COMMAND}' name='${FORM_COMMAND}' method='post' action="${actionURL}" target='_self'>
    <input type='hidden' name='${PARM_PAGE}' value=''/>
    <input type='hidden' name='${PARM_COMMAND}' value=''/>
    <input type='hidden' name='${PARM_ARGUMENT}' value=''/>
    <input type='hidden' name='date_fr' value=''/>
    <input type='hidden' name='date_to' value=''/>
    <input type='hidden' name='date_tz' value=''/>
  </form>
  
    <form id='${FORM_SELECT_DEVICE}' name='${FORM_SELECT_DEVICE}' method='post' target='_self'>
        <input type='hidden' name='${PARM_PAGE}' value='" + FilterValue(pageName) + "'/>
        <input type='hidden' name='date_fr' value=''/>
        <input type='hidden' name='date_to' value=''/>
        <input type='hidden' name='date_tz' value=''/>
        
        <label>${mapTypeTitle}:</label>
        <select class="form-control input-sm" id='${ID_DEVICE_ID}' name='${parmDevGrp}' onchange="javascript:trackMapSelectDevice()">
          <#list deviceMapList as deviceMap>
            <option value="${deviceMap['id']}" ${deviceMap['sel']}>  ${deviceMap['disp']}</option>
          </#list>
        </select>
    </form>
    <div class="calendar">
     <form class="form-horizontal">
       <label> Last Event:Date time</label>
       
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


    <label>${timeZoneTitle}</label>

<select  class="form-control input-sm">
    <#list timeZoneList as tmz>
        <#assign sel>
            <#if tmz = timeZone>
               string('selected')
            <#else>
                string('')
            </#if>
        </#assign>
        <option value="${sel}">${tmz}</option>
    </#list>
</select>

<button class="btn btn-xs btn-warning" style="margin-top: 5px;">Update</button>
<button class="btn btn-xs btn-warning" style="margin-top: 5px;">Auto</button>
<br><label>Replay</label>
<button  class="glyphicon glyphicon-play-circle"></button>
<label>InfoBox</label>
<input type="checkbox"></input>
<br><label>Cursor Location:</label>
<br>value1,value2
<br><label>Distance(ctrl-drag):</label>
<br>0.00 Miles
<br><label>Puspin Legend</label>
<br><img src="../images/20mph.png" alt="20mph" width="32" height="32"/>More Than 20 mph
<br><img src="../images/mph5.png" alt="5mph" width="32" height="32"/>More Than 5 mph
<br><img src="../images/lessmph5.png" alt="less5mph" width="32" height="32"/>Less Than 5 mph
</form>

<!-- Main component for a primary marketing message or call to action -->
 </div>
     <iframe width="600"height="400"frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/search?key=AIzaSyAXiYvo3JTOOaaJ3Dv-sQRqJOuHGwB1cT4&q=Mahakaleshwar+Temple+ujjain+madhyapradesh+India">
</iframe>
    </div> <!-- /container -->
   <#include "footer.ftl">
  </body>
  <!-- this should go after your </body> -->
<link rel="stylesheet" type="text/css" href="track/css/jquery.datetimepicker.css"/ >
<script src="track/js/jquery.js"></script>
<script src="track/js/jquery.datetimepicker.js"></script>
</html>
