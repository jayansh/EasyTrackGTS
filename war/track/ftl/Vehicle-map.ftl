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
       <p id="basicExample">
         <input type="text" class="date start form-control" />
         <input type="text" class="time start form-control" /> to
         <input type="text" class="date end form-control" />
         <input type="text" class="time end form-control" />
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
</html>
