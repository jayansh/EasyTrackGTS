<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>GeoZone Admin|Easy Track GTS</title>
    <#include "header.ftl">
  </head>

  <body>
    <div class="sidebar ">
    <!--<div class="col-md-8 ">-->
    <div class="panel panel-primary">
      <div class="panel-heading">${frameTitle}</div>
      <div class="panel-body">
        <div class="table-responsive">
          <form name='${FORM_ZONE_SELECT}' method='post' action='${selectURL}' target='_self'>
            <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_SELECT}'/>
            <table class="table">
              <label>${selectZoneTitle}:</label>
              <thead>
                <tr>
                  <th>${thSelect}</th>
                  <th>${thGeozoneId}</th>
                  <th>${thDescription}</th>
                  <#if showOverlapPriority>
                    <th>${thOverlapPriority}</th>
                  </#if>
                  <th>${thZoneType}</th>
                  <#if showRevGeocodeZone>
                    <th>${thRevGeocode}</th>
                  </#if>
                  <#if showArriveDepartZone>
                    <th>${thArriveZone}</th>
                    <th>${thDepartZone}</th>
                  </#if>
                  <#if showClientUploadZone=1>
                    <th>${thClientUpload}</th>
                  <#elseif showClientUploadZone=2>
                    <th>${thClientUploadId}</th>
                  </#if>
                  <th>${thRadiusMeters}</th>
                  <th>${thCenterPoint}</th>
                </tr>
              </thead>
              <tbody>
                <#list zoneMapList as zoneMap>
                  <tr>
                    <#if zoneMap['showZoneSelectRadio']>
                      <td><input type='radio' name="${zoneMap['PARM_ZONE_SELECT']}" id="${zoneMap['zoneID']}" value="${zoneMap['zoneID']}" ${zoneMap['checked']}/></td>
                    <#else>
                      <td>&nbsp;</td>
                    </#if>
                    <td><label for="${zoneMap['zoneID']}">${zoneMap['zoneID']}</label></td>
                    <td>${zoneMap['zoneDesc']}</td>
                    <#if showOverlapPriority>
                      <td>zoneMap['zonePriority']</td>
                    </#if>
                    
                    <td style="color:${zoneMap['typeColor']}">${zoneMap['zoneTypeStr']}</td>
                    <#if showRevGeocodeZone>
                      <td>${zoneMap['zoneRevGeo']}</td>
                    </#if>
                    <#if showArriveDepartZone>
                      <td>${zoneMap['zoneArrNtfy']}</td>
                      <td>${zoneMap['zoneDepNtfy']}</td>
                    </#if>
                    <#if showClientUploadZone=1>
                      <td>${zoneMap['zoneUpload']}</td>
                    <#elseif showClientUploadZone=2>
                      <td>${zoneMap['zoneUpldID']}</td>
                    </#if>
                    <td>${zoneMap['zoneRadius']}</td>
                    <td>${zoneMap['zoneCenter']}</td>
                  </tr>
                </#list>
              </tbody>
            </table>
            <#if allowView>
              <input type='submit' name='${PARM_SUBMIT_VIEW}' value='${viewBtnLabel}' class="btn btn-success btn-lg"/>
            </#if>
            <#if allowEdit>
              <input type='submit' name='${PARM_SUBMIT_EDIT}' value='${editBtnLabel}' class="btn btn-info btn-lg"/>
            </#if>
            <#if allowDelete>
              <input type='submit' name='${PARM_SUBMIT_DEL}' value='${deleteBtnLabel}' class="btn btn-danger btn-lg" ${onclickConfirmDelete}/>
            </#if>
          </form> 
          <#if allowNew>
            <hr><div style="margin-top:10px;">${createNewGeozoneLabel}:</div>
            <form name='${FORM_ZONE_NEW}' method='post' action='${newURL}' target='_self'>
              <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_NEW}'/>
              <label>${geozoneIdLabel}</label>
              <input name='${PARM_NEW_ID}' type="text" class="form-control input-lg"/>
              <#if showZoneTypeCombo>
                <select id='${PARM_NEW_TYPE}' name='${PARM_NEW_TYPE}' class="form-control"data-style="btn-primary">
                  <#list zoneTypeList?keys as key> 
                    <option value='${key}'>${zoneTypeList[key]}</option>
                  </#list>
                </select>
              </#if>
              <input type='submit' name='${PARM_SUBMIT_NEW}' value='${newBtnLabel}' class="btn btn-primary btn-lg" style="margin-top: 5px;"/>
            </form>
          </#if>
        </div>
      </div>
    </div>
    </div>
  <#include "footer.ftl">
  </body>
</html>             