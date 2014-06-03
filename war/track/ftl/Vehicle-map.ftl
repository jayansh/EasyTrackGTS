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
       <#if showFromCalendar>
          <div class="input-group date" id="${CALENDAR_FROM}">
            <input  class="form-control" type="text" placeholder="To Date" id="datetimepicker">
           
          </div>
          <div class="input-group date" id="${CALENDAR_TO}">
           <input  class="form-control" type="text" placeholder="To Date" id="datetimepicker1">
            
          </div>
       <#else>
         <div class="input-group date" id="datetimepickerto">
            <input class="form-control" type="text" placeholder="From Date" id="datetimepicker">
           
            </span>
          </div>
       </#if>
  <script>
                       
  </script>
  <script type="text/javascript">
jQuery('#datetimepicker').datetimepicker();
    jQuery('#datetimepicker1').datetimepicker();
</script>

<#if showTimezoneSelect>
<!-- Timezone select -->
<form id='${FORM_SELECT_TIMEZONE}' name='${FORM_SELECT_TIMEZONE}' method='get' action="${noopAction}" target='_self'>
<label>${timeZoneTitle}</label>
<select name="${SELECT_TIMEZONE_NAME}" onchange="${SELECT_TIMEZONE_ONCHANGE}" class="form-control input-sm">
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
</form>
</#if>
<!--form id='UpdateMap' name='UpdateMap' method='get' target='_self'>
  <#if showUpdateAll>
    <!-- 'Update All' -->
    <!--button class='btn btn-xs btn-warning' id='${ID_MAP_UPDATE_BTN}' style="margin-top: 5px;"
      name='update' title="${i18nUpdateTip}" onclick="javascript:trackMapClickedUpdateAll();">${i18nUpdateBtn}</button>
  </#if>
  <#if showUpdateLast>
     <!-- 'Update Last' -->
     <!--button class='btn btn-xs btn-warning' id='${ID_MAP_LAST_BTN}' style="margin-top: 5px;" name='update'
       title="${i18nLastTip}" onclick="javascript:trackMapClickedUpdateLast();">${i18nLastBtn}</button>
  </#if>
  <#if autoUpdateEnabled>
  <!-- 'Auto Update' -->
    <!--button class='btn btn-xs btn-warning' id='${ID_MAP_AUTOUPDATE_BTN}' style="margin-top: 5px;" name='autoUpdate'
     title="${i18nAutoTip}" onclick="javascript:trackMapClickedAutoUpdate();">${i18nAutoBtn}</button>
  </#if>
</form-->

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
