<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>User Admin|Easy Track GTS</title>
    <#include "header.ftl">
  </head>

  <body>
    <div class="sidebar ">
    <!--<div class="col-md-8 ">-->
      <div class="panel panel-primary">
        <div class="panel-heading">View/Edit User Information</div>
        <div class="panel-body">
          <#assign editable>
            <#if editUser>
              readonly
            <#else>
            </#if>
          </#assign>
          <#assign comboEnabled>
            <#if editUser>
            <#else>
              disabled
            </#if>
          </#assign>
          <form name="${FORM_USER_EDIT}" method="post" action="${editURL}" target='_self'>
            <input type='hidden' name="${PARM_COMMAND}" value="${COMMAND_INFO_UPDATE}"/>
            <label>${userIdLabel}</label>
            <input type="text" name="${PARM_USER_SELECT}" value="${selUserId}" class="form-control" readonly/>
            <label>${userActiveLabel}</label>
            <#assign userActiveEnabled>
              <#if userActiveEditable>
              <#else>
                disabled
             </#if>
            </#assign>
            <select name="${PARM_USER_ACTIVE}" class="form-control input-lg" ${userActiveEnabled}>
              <#list yesNoMap?keys as key> 
                <#assign sel>
                  <#if selUserActive>
                    selected
                  <#else>
                  </#if>
                </#assign>
                <option value='${key}' ${sel}>${yesNoMap[key]}</option>
              </#list>
            </select>
            <label>${userNameLabel}</label>
            <input type="text" name="${PARM_USER_NAME}" value="${userNameValue}" class="form-control" ${editable}/>
            <#if viewPass>
              <label>${userPasswordLabel}</label>
              <input type="text" name="${PARM_USER_PASSWORD}" value=${password} class="form-control" ${editable}/>
            </#if>
            <label>${contactNameLabel}</label>
            <input type="text" name="${PARM_CONTACT_NAME}" value="${contactNameValue}" class="form-control" ${editable}/>
            <label>${contactPhoneLabel}</label>
            <input type="text" name="${PARM_CONTACT_PHONE}" value="${contactPhoneValue}" class="form-control" ${editable}/>
            <label>${contactEmailLabel}</label>
            <input type="email" name="${PARM_CONTACT_EMAIL}" value="${contactEmailValue}" Class="form-control" ${editable}/>
            <label>${notifyEmailLabel}</label>
            <input type="email" name="${PARM_NOTIFY_EMAIL}" value="${notifyEmailValue}" Class="form-control" ${editable}/>
            <label>${timezoneLabel}</label>
            <select class="form-control input-lg" name="${PARM_TIMEZONE}" ${comboEnabled}>
              <#list timezoneMap?keys as key> 
                <#assign sel>
                  <#if selTimeZone = key>
                    selected
                  <#else>
                  </#if>
                </#assign>
                <option value='${key}' ${sel}>${timezoneMap[key]}</option>
              </#list>
            </select>
            <#if showAddress>
              <label>${addressLine1Label}</label>
              <input type="email" name="${PARM_ADDRESS_LINE_1}" value="${addressLine1Value}" Class="form-control" ${editable}/>
              <label>${addressCityLabel}</label>
              <input type="email" name="${PARM_ADDRESS_CITY}" value="${addressCityValue}" Class="form-control" ${editable}/>
              <label>${addressStateLabel}</label>
              <input type="email" name="${PARM_ADDRESS_STATE}" value="${addressStateValue}" Class="form-control" ${editable}/>
            </#if>
            <#if showOffice>
              <label>${officeLocationLabel}</label>
              <input type="email" name="${PARM_OFFICE_LOC}" value="${officeLocationValue}" Class="form-control" ${editable}/>
            </#if>
            <#if isSpeedUnits>
              <label>${speedUnitLabel}</label>
              <select class="form-control input-lg" name="${PARM_SPEED_UNITS}" ${comboEnabled}>
              <#list speedUnitsMap?keys as key> 
                <#assign sel>
                  <#if selSpeedUnit = key>
                    selected
                  <#else>
                  </#if>
                </#assign>
                <option value='${key}' ${sel}>${speedUnitsMap[key]}</option>
              </#list>
              </select>
              <label>${distanceUnitLabel}</label>
              <select class="form-control input-lg" name="${PARM_DIST_UNITS}" ${comboEnabled}>
              <#list distanceUnitsMap?keys as key> 
                <#assign sel>
                  <#if selDistanceUnit = key>
                    selected
                  <#else>
                  </#if>
                </#assign>
                <option value='${key}' ${sel}>${distanceUnitsMap[key]}</option>
              </#list>
              </select>
            </#if>
            <#if viewGroup>
              <#if isGroupMapLengthOne>
                <label>${devGroupLabel}</label>
                <select class="form-control input-lg" name="${PARM_DEV_GROUP}" ${comboEnabled}>
                <#list devGroupMap?keys as key> 
                  <#assign sel>
                    <#if selDevGroup = key>
                      selected
                    <#else>
                    </#if>
                  </#assign>
                  <option value='${key}' ${sel}>${devGroupMap[key]}</option>
                </#list>
                </select>
              <#else>
                <#list groupMapList as groupMap> 
                  <label>${groupMap['devGroupLabel']}</label>
                  <select class="form-control input-lg" name="${groupMap['PARM_DEV_GROUP']}" ${comboEnabled}>
                    <#assign devGroupMap = groupMap['devGroupMap']/>
                    <#list devGroupMap?keys as key> 
                      <#assign sel>
                        <#if selDevGroup = key>
                          selected
                        <#else>
                        </#if>
                      </#assign>
                      <option value='${key}' ${sel}>${devGroupMap[key]}</option>
                    </#list>
                  </select>
                </#list>
              </#if>
            </#if>
            <label>${firstLoginPageLabel}</label>
              <select class="form-control input-lg" name="${PARM_DEV_GROUP}" ${comboEnabled}>
                <#list loginComboMap?keys as key> 
                  <#assign sel>
                    <#if loginPage = key>
                      selected
                    <#else>
                    </#if>
                  </#assign>
                  <option value='${key}' ${sel}>${loginComboMap[key]}</option>
                </#list>
              </select>
              
            <#if showPrefDev>
              <label>${prefDeviceLabel}</label>
              <select class="form-control input-lg" name="${PARM_PREF_DEVICE}" ${comboEnabled}>
                <#list deviceMap?keys as key> 
                  <#assign sel>
                    <#if selDeviceId = key>
                      selected
                    <#else>
                    </#if>
                  </#assign>
                  <option value='${key}' ${sel}>${deviceMap[key]}</option>
                </#list>
              </select>
            </#if>  

            <#if showNotes>
              <label>${notesLabel}</label>
              <input type="text" name="${PARM_USER_NOTES}" value="${notesValue}" Class="form-control" ${editable}/>
            </#if>

            <#if isCustomkey>
              <#list customKeyMapList as customKeyMap>
                <label>${customKeyMap['userCustomerLabel']}</label>
                <input type="text" name="${customKeyMap['PARM_USER_CUSTOM']}" value="${customKeyMap['userCustomerValue']}" Class="form-control" ${editable}/>
              </#list>
            </#if>

            <#if viewALvl>
              <label>${accessLevelLabel}</label>
                <#assign accLvlEnabled>
                  <#if editALvl>
                  <#else>
                    disabled
                  </#if>
                </#assign>
              <select class="form-control input-lg" name="${PARM_ACCESS_LEVEL}" ${accLvlEnabled}>
                <#list accessLevelMap?keys as key> 
                  <#assign sel>
                    <#if selAccessLevel = key>
                      selected
                    <#else>
                    </#if>
                  </#assign>
                  <option value='${key}' ${sel}>${accessLevelMap[key]}</option>
                </#list>
              </select>
            </#if>

            <#if isUserRole>
              <label>${userRoleLabel}</label>
              <select class="form-control input-lg" name="${PARM_USER_ROLE}" ${comboEnabled}>
                <#list userRoleMap?keys as key> 
                  <#assign sel>
                    <#if selUserRole = key>
                      selected
                    <#else>
                    </#if>
                  </#assign>
                  <option value='${key}' ${sel}>${userRoleMap[key]}</option>
                </#list>
              </select>
            </#if>

            <#if isUserAccessCtrl>
               <label>${userAccessCtrlTitle}: ${userAccessCtrlDesc}</label>
               <#list userAccessCtrlMapList as userAccessCtrlMap>
                 <label>${userAccessCtrlMap['comboLabel']}</label>
                 <#assign userAccessCtrlComboEnabled>
                   <#if userAccessCtrlMap['isComboEditable']>
                   <#else>
                     disabled
                   </#if>
                 </#assign>
                 <select class="form-control input-lg" name="${userAccessCtrlMap['comboId']}" ${userAccessCtrlComboEnabled}>
                   <#assign userAccessComboMap = userAccessCtrlMap['comboMap']/>
                   <#list userAccessComboMap?keys as key> 
                     <#assign sel>
                       <#if userAccessCtrlMap['selComboKey'] = key>
                         selected
                       </#if>
                     </#assign>
                     <option value='${key}' ${sel}>${userAccessComboMap[key]}</option>
                   </#list>
                   ${userAccessCtrlMap['comboTrailingHtml']}
                 </select>
               </#list>
            </#if>

            <#if editUser>
              <input type='submit' name='${PARM_SUBMIT_CHG}' value='${submitBtnLabel}' class="btn btn-primary btn-sm" >
              <input type='button' name='${PARM_BUTTON_CANCEL}' value='${cancelBtnLabel}' onclick="javascript:openURL('${editURL}','_self')" class="btn btn-primary btn-sm">
            <#else>
              <input type='button' name='${PARM_BUTTON_BACK}' value='${backBtnLabel}' onclick="javascript:openURL('${editURL}','_self');" class="btn btn-primary btn-sm">
            </#if>
          </form>
        </div>
      </div>
    </div>
    <#include "footer.ftl">
  </body>
</html>