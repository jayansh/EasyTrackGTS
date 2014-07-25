<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Vehicle Admin|Easy Track GTS</title>
    <#include "header.ftl">
  </head>
  <body>
    <div class="sidebar ">
    <!--<div class="col-md-8 ">-->
      <div class="panel panel-primary">
        <div class="panel-heading">${frameTitle} <a href='${refreshURL}'><span>${refreshURLTitle}</span></a></div>
        <div class="panel-body">
          <div class="table-responsive">
            <form name='${FORM_DEVICE_SELECT}' method='post' action='${selectURL}' target='_self'>
              <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_SEL_DEVICE}'/>
              <table class="table">
                ${selectDevice}:
                <thead>
                  <tr>
                    <th>${select}</th>
                    <th>${deviceID}</th>
                    <#if viewUniqID>
                      <th>${uniqueID}</th>
                    </#if>
                    <th>${decription}</th>
                    <th>${devEquipType}</th>
                    <#if viewSIM>
                      <th>${simPhoneNumber}</th>
                    </#if>
                    <#if viewServID>
                      <th>${devServerID}</th>
                    </#if>
                    <th>${ignitionState}</th>
                    <#list smbTitleList as smbTitle>
                      <th>${smbTitle}</th>
                    </#list>
                    <#if showAcks>
                      <th>${ackExpected}</th>
                    </#if>
                    <#if viewActive>
                      <th>${active}</th>
                    </#if>
                    </tr>
                  </thead>
                  <tbody>
                  <#if deviceMapList?has_content>
                    <#list deviceMapList as deviceMap>
                        <tr>
                          <td><input type='radio' name='${PARM_DEVICE}' id="${deviceMap['deviceID']}" value="${deviceMap['deviceID']}" ${deviceMap['checked']}></td>
                          <td><label for='${deviceMap['deviceID']}'>${deviceMap['deviceID']}</label></td>
                          <#if viewUniqID>
                            <td>${deviceMap['uniqueID']}</td>
                          </#if>
                          <td>${deviceMap['deviceDesc']}</td>
                          <td>${deviceMap['equipType']}</td>
                          <#if viewSIM>
                            <td>${deviceMap['simPhone']}</td>
                          </#if>
                          <#if viewServID>
                            <td>${deviceMap['devCode']}</td>
                          </#if>
                          <td style="color:${deviceMap['ignColor']}">${deviceMap['ignDesc']}</td>
                          <#list deviceMap['stateValList'] as stateVal>
                            <td>${stateVal}</td>
                          </#list>
                          <#if showAcks>
                            <td>${deviceMap['pendingACK']}</td>
                          </#if>
                          <#if viewActive>
                            <td>${deviceMap['active']}</td>
                          </#if>
                        </tr>
                    </#list>
                  </#if>
                  </tbody>
                </table>
                <#if allowView>
                  <input  type='submit' name='${PARM_SUBMIT_VIEW}' value='${viewBtnVal}' class="btn btn-success btn-lg"/>
                </#if>
                <#if allowEdit>
                  <input  type='submit' name='${PARM_SUBMIT_EDIT}' value='${editBtnVal}' class="btn btn-info btn-lg"/>
                </#if>
                <#if allowCommand>
                  <input  type='submit' name='${PARM_SUBMIT_PROP}' value='${commandsBtnVal}' class="btn btn-success btn-lg"/>
                </#if>
                <#if allowSmsCmd>
                  <input  type='submit' name='${PARM_SUBMIT_SMS}' value='${smsBtnVal}' class="btn btn-success btn-lg"/>
                </#if>
                <#if allowDelete>
                  <input  type='submit' name='${PARM_SUBMIT_DEL}' value='${deleteBtnVal}' class="btn btn-danger btn-lg" ${onclickConfirmDelete}/>
                </#if>
            </form>
                <hr>
                <#if allowNew??>
                  <form name='${FORM_DEVICE_NEW}' method='post' action='${newURL}' target='_self'>
                  <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_NEW_DEVICE}'/>
                  <div style="margin-top:10px;">${createText}:</div>
                  <label>${createNewDeviceLabel}</label>
                  <input type="text" name='${PARM_NEW_NAME}' class="form-control input-lg"/>
                  <input type='submit' name='${PARM_SUBMIT_NEW}' value='${newBtnValue}' class="btn btn-primary btn-lg" style="margin-top: 5px;"/>
                </#if>
          </div>
        </div>
      </div>
    </div>
    <#include "footer.ftl">
  </body>
</html>             