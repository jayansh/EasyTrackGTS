<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Group Admin|Easy Track GTS</title>
    <#include "header.ftl">
  </head>

  <body>
    <div class="sidebar ">
    <!--<div class="col-md-8 ">-->
      <div class="panel panel-primary">
        <div class="panel-heading">${frameTitle}</div>
        <div class="panel-body">
          <div class="table-responsive">
            <form name='${FORM_GROUP_SELECT}' method='post' action='${selectURL}' target='_self'>
              <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_SELECT}'/>
              <table class="table">
                <label>${selectTitle}:</label>
                <thead>
                  <tr>
                    <th>${thSelect}</th>
                    <th>${thGroupId}</th>
                    <th>${thGroupName}</th>
                    <th>${thDeviceCount}</th>
                  </tr>
                </thead>
                <tbody>
                  <#list groupMapList as groupMap>
                    <tr>
                      <td ${groupMap['SORTTABLE_SORTKEY']}="${groupMap['index']}">${groupMap['tdSelect']}</td>
                      <td>${groupMap['groupID']}</td>
                      <td>${groupMap['groupDesc']}</td>
                      <td>${groupMap['devCount']}</td> 
                    </tr>
                  </#list>
                </tbody>
              </table>
              <#if allowView>
                 <input type='submit' name='${PARM_SUBMIT_VIEW}' value='${viewBtnValue}' class="btn btn-success btn-lg"/>
              </#if>
              <#if allowEdit>
                 <input type='submit' name='${PARM_SUBMIT_EDIT}' value='${editBtnValue}' class="btn btn-info btn-lg"/>
              </#if>
              <#if allowProp>
                 <input type='submit' name='${PARM_SUBMIT_PROP}' value='${propBtnValue}' class="btn btn-success btn-lg"/>
              </#if>
              <#if allowDelete>
                 <input type='submit' name='${PARM_SUBMIT_DEL}' value='${deleteBtnValue}' class="btn btn-danger btn-lg" onclickConfirmDelete/>
              </#if>
            </form> 
            <#if allowNew>
              <hr><div style="margin-top:10px;">${createNewGrpTitle}:</div>
              <form name='${FORM_GROUP_NEW}' method='post' action='${newURL}' target='_self'>
                <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_NEW}'/>
                <label>${grpIdLabel}</label>
                <input name='${PARM_NEW_NAME}'  type="text" class="form-control input-lg"/>
                <input type='submit' name='${PARM_SUBMIT_NEW}' value='${newBtnValue}' class="btn btn-primary btn-lg" style="margin-top: 5px;"/>
              </form>
            </#if>
          </div>
        </div>
      </div>
    </div>
    <#include "footer.ftl">
  </body>
</html>             