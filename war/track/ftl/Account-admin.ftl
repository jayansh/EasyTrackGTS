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
          <div class="panel-heading">${frameTitle}</div>
          <div class="panel-body">
            <form class="form-horizontal" name='AccountInfo' method='post' action='${chgURL}' target='_self'>
              <label for='${PARM_ACCT_ID}'>${PARM_ACCT_ID_LABEL}</label>
                <input id='${PARM_ACCT_ID}' name='${PARM_ACCT_ID}' type="text" value="${PARM_ACCT_ID_VALUE}" class=" form-control input-lg" readonly/>
              <label for='${PARM_ACCT_DESC}'>${PARM_ACCT_DESC_LABEL}</label>
                <input id='${PARM_ACCT_DESC}' name='${PARM_ACCT_DESC}' type="text" value="${PARM_ACCT_DESC_VALUE}" class="form-control input-lg"/>
              <label for='${PARM_CONTACT_NAME}'>${PARM_CONTACT_NAME_LABEL}</label>
                <input id='${PARM_CONTACT_NAME}' name='${PARM_CONTACT_NAME}' type="text" value="${PARM_CONTACT_NAME_VALUE}" class="form-control input-lg"/>
              <label for='${PARM_CONTACT_PHONE}'>${PARM_CONTACT_PHONE_LABEL}</label>
                <input id='${PARM_CONTACT_PHONE}' name='${PARM_CONTACT_PHONE}' type="text" value="${PARM_CONTACT_PHONE_VALUE}" class="form-control input-lg"/>
              <label for='${PARM_CONTACT_EMAIL}'>${PARM_CONTACT_EMAIL_LABEL}</label>
                <input id='${PARM_CONTACT_EMAIL}' name='${PARM_CONTACT_EMAIL}' type="text" value="${PARM_CONTACT_EMAIL_VALUE}" class="form-control input-lg"/>
              <label for='${PARM_NOTIFY_EMAIL}'>${PARM_NOTIFY_EMAIL_LABEL}</label>
                <input id='${PARM_NOTIFY_EMAIL}' name='${PARM_NOTIFY_EMAIL}' type="text" value="${PARM_NOTIFY_EMAIL_VALUE}" class="form-control input-lg"/>
              <label for='${PARM_TIMEZONE}'>${PARM_TIMEZONE_LABEL}</label>
                <select id='${PARM_TIMEZONE}' name='${PARM_TIMEZONE}' class="form-control input-lg">
                  <#list PARM_TIMEZONE_LIST as timeZone>
                    <#assign sel>
                      <#if PARM_TIMEZONE_SEL = timeZone>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${timeZone}"  ${sel}>${timeZone}</option>
                  </#list>
                </select>
              <label for='${PARM_SPEED_UNITS}'>${PARM_SPEED_UNITS_LABEL}</label>
                <select id='${PARM_SPEED_UNITS}' name='${PARM_SPEED_UNITS}' class="form-control input-lg">
                   <#list PARM_SPEED_UNITS_LIST?keys as speedUnit>
                    <#assign sel>
                      <#if PARM_SPEED_UNITS_SEL = PARM_SPEED_UNITS_LIST[speedUnit]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${speedUnit}"  ${sel}>${PARM_SPEED_UNITS_LIST[speedUnit]}</option>
                  </#list>
                </select>
              <label for='${PARM_DIST_UNITS}'>${PARM_DIST_UNITS_LABEL}</label>
                <select id='${PARM_DIST_UNITS}' name='${PARM_DIST_UNITS}' class="form-control input-lg">
                   <#list PARM_DIST_UNITS_LIST?keys as key>
                    <#assign sel>
                      <#if PARM_DIST_UNITS_SEL = PARM_DIST_UNITS_LIST[key]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${key}"  ${sel}>${PARM_DIST_UNITS_LIST[key]}</option>
                  </#list>
                </select>
              <label for='${PARM_VOLM_UNITS}'>${PARM_VOLM_UNITS_LABEL}</label>
                 <select id='${PARM_VOLM_UNITS}' name='${PARM_VOLM_UNITS}' class="form-control input-lg">
                   <#list PARM_VOLM_UNITS_LIST?keys as key>
                    <#assign sel>
                      <#if PARM_VOLM_UNITS_SEL = PARM_VOLM_UNITS_LIST[key]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${key}"  ${sel}>${PARM_VOLM_UNITS_LIST[key]}</option>
                  </#list>
                </select>
              <label for='${PARM_ECON_UNITS}'>${PARM_ECON_UNITS_LABEL}</label>
                <select id='${PARM_ECON_UNITS}' name='${PARM_ECON_UNITS}' class="form-control input-lg">
                   <#list PARM_ECON_UNITS_LIST?keys as key>
                    <#assign sel>
                      <#if PARM_ECON_UNITS_SEL = PARM_ECON_UNITS_LIST[key]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${key}"  ${sel}>${PARM_ECON_UNITS_LIST[key]}</option>
                  </#list>
                </select>
              <label for='${PARM_PRESS_UNITS}'>${PARM_PRESS_UNITS_LABEL}</label>
                <select id='${PARM_PRESS_UNITS}' name='${PARM_PRESS_UNITS}' class="form-control input-lg">
                  <#list PARM_PRESS_UNITS_LIST?keys as key>
                    <#assign sel>
                      <#if PARM_PRESS_UNITS_SEL = PARM_PRESS_UNITS_LIST[key]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${key}"  ${sel}>${PARM_PRESS_UNITS_LIST[key]}</option>
                  </#list>
                </select>
              <label for='${PARM_TEMP_UNITS}'>${PARM_TEMP_UNITS_LABEL}</label>
                <select id='${PARM_TEMP_UNITS}' name='${PARM_TEMP_UNITS}' class="form-control input-lg">
                  <#list PARM_TEMP_UNITS_LIST?keys as key>
                    <#assign sel>
                      <#if PARM_TEMP_UNITS_SEL = PARM_TEMP_UNITS_LIST[key]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${key}"  ${sel}>${PARM_TEMP_UNITS_LIST[key]}</option>
                  </#list>
                </select>
              <label for='${PARM_LATLON_FORMAT}'>${PARM_LATLON_FORMAT_LABEL}</label>
                <select id='${PARM_LATLON_FORMAT}' name='${PARM_LATLON_FORMAT}' class="form-control input-lg">
                  <#list PARM_LATLON_FORMAT_LIST?keys as key>
                    <#assign sel>
                      <#if PARM_LATLON_FORMAT_SEL = PARM_LATLON_FORMAT_LIST[key]>
                        selected
                      <#else>
                      </#if>
                    </#assign>
                    <option value="${key}"  ${sel}>${PARM_LATLON_FORMAT_LIST[key]}</option>
                  </#list>
               </select>
              <label for='${PARM_DEVICE_TITLE}'>${PARM_DEVICE_TITLE_LABEL}</label>
                <input id='${PARM_DEVICE_TITLE}' name='${PARM_DEVICE_TITLE}' type="text" value='${PARM_DEVICE_TITLE_VALUE}' class=" form-control input-lg"/>   
              <label for='${PARM_GROUP_TITLE}'>${PARM_GROUP_TITLE_LABEL}</label>          
                <input id='${PARM_GROUP_TITLE}' name='${PARM_GROUP_TITLE}' type="text" value='${PARM_GROUP_TITLE_VALUE}'  class="form-control input-lg"/> 
              <label id='${PARM_ADDRESS_TITLE}'>${PARM_ADDRESS_TITLE_LABEL}</label>          
                <input id='${PARM_ADDRESS_TITLE}' name='${PARM_ADDRESS_TITLE}' type="text" value='${PARM_ADDRESS_TITLE_VALUE}' class="form-control input-lg"/> 
              <label for='${PARM_DEFAULT_USER}'>${PARM_DEFAULT_USER_LABEL}</label>          
                <input id='${PARM_DEFAULT_USER}' name='${PARM_DEFAULT_USER}' type="text" value="${PARM_DEFAULT_USER_VALUE}" class=" form-control input-lg"/>
              
              <#if isExpireTime>  
                <label for='${PARM_ACCT_EXPIRE}'>${PARM_ACCT_EXPIRE_LABEL}</label>          
                  <input id='${PARM_ACCT_EXPIRE}' name='${PARM_ACCT_EXPIRE}' type="text" value="${PARM_ACCT_EXPIRE_VALUE}" class=" form-control input-lg"/>
              </#if>   
              
              <#if maxPingCntMoreThanZero>  
                <label for='${PARM_MAX_PINGS}'>${PARM_MAX_PINGS_LABEL}</label>          
                  <input id='${PARM_MAX_PINGS}' name='${PARM_MAX_PINGS}' type="text" value="${PARM_MAX_PINGS_VALUE}" class=" form-control input-lg"/>
                <label for='${PARM_TOT_PINGS}'>${PARM_TOT_PINGS_LABEL}</label>          
                  <input id='${PARM_TOT_PINGS}' name='${PARM_TOT_PINGS}' type="text" value="${PARM_TOT_PINGS_VALUE}" class=" form-control input-lg"/>
              </#if>  
              
              <#if allowEdit>
                <input name='${PARM_SUBMIT_CHANGE}' type="submit" value="${PARM_SUBMIT_CHANGE_LABEL}" class="btn btn-primary btn-lg" style="margin-top:5px;"/>
                <input name='${PARM_BUTTON_CANCEL}' type="button" value='${PARM_BUTTON_CANCEL_LABEL}' onclick="javascript:openURL('${menuURL}','_self')" class="btn btn-danger btn-lg" style="margin-top: 5px;"/>
              <#else>
                <input type='button' name='${PARM_BUTTON_BACK}' value='${PARM_BUTTON_BACK_LABEL}' onclick="javascript:openURL('${menuURL}','_self');">
              </#if>
            </form>
          </div>
        </div>
      </div>
    </div>
    <#include "footer.ftl">
  </body>
</html>