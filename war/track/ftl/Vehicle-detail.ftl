<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Vehicle Detail Report|Easy Track GTS</title>
    <#include "header.ftl">
  </head>
  <body>
    <div class="sidebar " style="margin-left: 250px;">
      <div class="col-md-8 ">
        <div class="panel panel-primary">
          <div class="panel-heading">${reportPageTitle}</div>
          <!--div class="panel-title">${reportPageDesc}</div-->
          <div class="panel-body">
              <form id='${FORM_DEVICE_GROUP}' name='${FORM_DEVICE_GROUP}' method='post' action="javascript:rptmSubmitReport();" target='_self''>
                <label>${deviceGroupTitle}</label>
                <select class="form-control input-lg" id='${ID_DEVICE_ID}' name='${PARM_DEVICE_ID}' onchange="javascript:trackMapSelectDevice()">
                  <#list deviceMapList as deviceMap>
                    <option value="${deviceMap['id']}" ${deviceMap['sel']}>  ${deviceMap['disp']}</option>
                  </#list>
                </select>
              </form>
              <label>${selectDateTitle}</label>
                <div class="input-group date" id='${CALENDAR_FROM}'>
                  <input class="form-control" type="text" placeholder="From Date" id="datetimepicker">
                </div>
                <div class="input-group date" id='${CALENDAR_TO}'>
                  <input  class="form-control" type="text" placeholder="To Date" id="datetimepicker1">
                </div>
                <script type="text/javascript">jQuery('#datetimepicker').datetimepicker();
                  jQuery('#datetimepicker1').datetimepicker();
                </script>
              <form id='TimeZoneSelect' name='TimeZoneSelect' method='get' action=\"javascript:true;\" target='_self'>
                <label>Time Zone:</label>
                <select name='${parm_TIMEZONE}' onchange="javascript:calSelectTimeZone(document.TimeZoneSelect.${parm_TIMEZONE}.value)" class="form-control input-lg">
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
              <form id='${FORM_SELECT_REPORT}' name='${FORM_SELECT_REPORT}' method='post' action="javascript:rptmSubmitReport()" target='_self'>
                 <#list reportSelectList as reportSelectMap>
                    <label> ${reportSelectMap['desc']}</label>
                    <#list reportSelectMap['reportEntryList'] as reportEntryMap>
                      <input type='radio' name="${reportEntryMap['PARM_REPORT']}" id="${reportEntryMap['id']}" 
                        value="${reportEntryMap['value']}" onchange='javascript:rptmReportRadioChanged();' ${reportEntryMap['checked']}/>
                      <label for="${reportEntryMap['id']}">${reportEntryMap['label']}</label>
                      <#if reportEntryMap['hasReportOptions']>
                        <select class="form-control input-lg" id="${reportEntryMap['optId']}" name="${reportEntryMap['optId']}" style="margin-top: 5px;">
                          <#assign optMap = reportEntryMap['optMap']/>
                          <#list optMap?keys as key>
                            <option value="${key}">${optMap[key]}</option>
                          </#list>
                         </select>
                      <#elseif reportEntryMap['hasReportTextInput']>
                        <input type="text" class="form-control" id='${reportEntryMap[text]}'/>
                      </#if>
                    </#list>
                 </#list>
              </form>
              <form id='${FORM_GET_REPORT}' name='${FORM_GET_REPORT}' method='post' action="javascript:rptmSubmitReport();" target='_self'>
                <label>${reportFormatTitle}<label>
                <select id="${PARM_FORMAT}" name="${PARM_FORMAT}" class="form-control input-lg">
                  <#list reportFormatTypeMap?keys as key >
                    <option value="${reportFormatTypeMap[key]}">${key}</option>
                  </#list>
                </select>
                <input type='submit' name='${PARM_REPORT_SUBMIT}' value='${getReportBtnValue}' class="btn btn-info btn-sm" style="margin-top: 5px;"/>
                <input id='${PARM_EMAIL_ADDR}' name='${PARM_EMAIL_ADDR}' style='margin-top:5px; margin-left:10px;; visibility:hidden' type='${emailInputType}' ${emailRO} value='${emailInputValue}' size='76'>
              </form>
          </div>
        </div>
      </div>
    </div>

    <#include "footer.ftl">
  </body>
</html>
