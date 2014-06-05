<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
          center: new google.maps.LatLng(44.5403, -78.5463),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(map_canvas, map_options)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
   
    <title>Vehicle Map|Easy Track GTS</title>

     <#include "header.ftl">
  </head>

<body>
  <!-- Command form -->
<div class="use-sidebar sidebar-at-left" id="main" style="margin-top:20px; ">
  <div id="sidebar">
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
            <input  class="form-control" type="text" placeholder="From Date" id="datetimepicker">
          </div>
          <div class="input-group date" id="${CALENDAR_TO}">
            <input  class="form-control" type="text" placeholder="To Date" id="datetimepicker1">
          </div>
        <#else>
          <div class="input-group date" id="${CALENDAR_TO}">
            <input class="form-control" type="text" placeholder="To Date" id="datetimepicker1">
          </div>
        </#if>
        <script type="text/javascript">
          jQuery('#datetimepicker').datetimepicker();
          jQuery('#datetimepicker1').datetimepicker();
        </script>
      </form>
    </div>
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
        <form id='UpdateMap' name='UpdateMap' method='get' target='_self'>
          <#if showUpdateAll>
          <!-- 'Update All' -->
            <input type="button" class='btn btn-xs btn-warning' id='${ID_MAP_UPDATE_BTN}' style="margin-top: 5px;"
                name='update' title="${i18nUpdateTip}" value='${i18nUpdateBtn}' onclick="javascript:trackMapClickedUpdateAll();"></input>
          </#if>
          <#if showUpdateLast>
            <!-- 'Update Last' -->
            <input type="button" class='btn btn-xs btn-warning' id='${ID_MAP_LAST_BTN}' style="margin-top: 5px;" name='update'
                title="${i18nLastTip}" value='${i18nLastBtn}' onclick="javascript:trackMapClickedUpdateLast();"></input>
          </#if>
          <#if autoUpdateEnabled>
            <!-- 'Auto Update' -->
            <input type="button" class='btn btn-xs btn-warning' id='${ID_MAP_AUTOUPDATE_BTN}' style="margin-top: 5px;" name='autoUpdate'
                title="${i18nAutoTip}" value='${i18nAutoBtn}' onclick="javascript:trackMapClickedAutoUpdate();"></input>
          </#if>
        </form>
        <#if replayEnable && showPushpinReplay>
          <form id='ReplayMap' name='ReplayMap' method='get' 
                action="javascript:trackMapClickedReplay(document.getElementById('ReplayMap').${ID_MAP_SHOW_INFO}.checked);" target='_self'>
            <br><label for="${ID_MAP_REPLAY_BTN}">${i18nReplayBtn}</label>
            <input type="button" id="${ID_MAP_REPLAY_BTN}" name='replayMap' class="glyphicon glyphicon-play-circle" title="${i18nReplayTip}"></input>
            <span title="${i18nInfoTip}">
              <label for="${ID_MAP_SHOW_INFO}>${i18nInfoText}</label>
              <input type="checkbox" id='${ID_MAP_SHOW_INFO}' name='${ID_MAP_SHOW_INFO}'></input>
            </span>
          </form>
        </#if>
        <#if mapSupportsCursorLocation>
          <br><label>${CursonLocationLbl}:</label>
          <br><div id='${ID_LAT_LON_DISPLAY}' style='margin-left:10px;'></div>
        </#if>
        <#if mapSupportsDistanceRuler>
          <br><label>${DistanceLbl}:</label>
          <br><div id='${ID_DISTANCE_DISPLAY}' style='margin-left:10px;'>${VALUE_DISTANCE_DISPLAY}</div>
        </#if>
        <!--<br><label>Puspin Legend</label>
        <br><img src="../images/20mph.png" alt="20mph" width="32" height="32"/>More Than 20 mph
        <br><img src="../images/mph5.png" alt="5mph" width="32" height="32"/>More Than 5 mph
        <br><img src="../images/lessmph5.png" alt="less5mph" width="32" height="32"/>Less Than 5 mph-->
    ${legendHtml}
  </div>

  <div id="content">
    <div id="map_canvas"></div>
  </div>

<div id="separator"></div>
<div class="clearer">&nbsp;</div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
    // Variables
    var objMain = $('#main');

    // Show sidebar
    function showSidebar(){
        objMain.addClass('use-sidebar');
    }

    // Hide sidebar
    function hideSidebar(){
        objMain.removeClass('use-sidebar');
    }

    // Sidebar separator
    var objSeparator = $('#separator');

    objSeparator.click(function(e){
        e.preventDefault();
        if ( objMain.hasClass('use-sidebar') ){
            hideSidebar();
        }
        else {
            showSidebar();
        }
    }).css('width', objSeparator.parent.outerWidth() + 'px');

    // Load 
});

</script>

<#if isFeatureDetailReportAndLocatuinDetailsSupported>
  <a class='trackMapDetailLocationControl' id='${ID_DETAIL_CONTROL}' href="javascript:mapProviderToggleDetails()">
  ${showLocationDetails}
  </a>
  <div id='${ID_DETAIL_TABLE}' style='width:100%;'></div>
</#if>

<#include "footer.ftl">


</body>
</html>
