<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>${frameTitle}</title>
    
    <#include "header.ftl">
  </head>

  <body>
    <div class="sidebar ">
<!--<div class="col-md-8 ">-->
    <div class="panel panel-primary">
      <div class="panel-heading">View/Edit User Information</div>
      <div class="panel-body">
        <div class="table-responsive">
          <form name='${FORM_USER_SELECT}' method='post' action='${selectURL}' target='_self'>
            <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_SELECT}'/>
            <table class="table">
              <!--b>${selectUser}:<b-->
              <thead>
                <tr>
                  <th>${select}</th>
                  <th>${userID}</th>
                  <th>${userDesc}</th>
                  <#if showRole && viewRole>
                    <th>${role}</th>
                  </#if>
                  <th>${contactName}</th>
                  <th>${contactEmail}</th>
                  <th>${timeZone}</th>
                  <th>${active}</th>
                  <th>${lastLogin}</th>
                </tr>
              </thead>
              <tbody>
              <#list userList as userMap>
                <tr>
                    <td><input type='radio' name='${PARM_USER_SELECT}' id='${userMap['userID']}' value='${userMap['userID']}' ${userMap['checked']}></td>
                    <td><label for='${userMap['userID']}'>${userMap['userID']}</label></td>
                    <td>${userMap['userDesc']}</td>
                    <#if showRole && viewRole>
                      <td>${userMap['userRoleID']}</td>
                    </#if>
                    <td>${userMap['contactName']}</td>
                    <td>${userMap['contactEmail']}</td>
                    <td>${userMap['timeZone']}</td>
                    <td>${userMap['active']}</td>
                    <td>${userMap['lastLogin']}</td>
                </tr>
              </#list>
              </tbody>
            </table>
            <#if allowView>
              <input type='submit' name='${PARM_SUBMIT_VIEW}' value='${viewBtnText}' class="btn btn-success btn-lg"></input>
            </#if>
            <#if allowEdit>
              <input type='submit' name='${PARM_SUBMIT_EDIT}' value='${editBtnText}' class="btn btn-info btn-lg"></input>
            </#if>
            <#if allowDelete>
              <input type='submit' name='${PARM_SUBMIT_DEL}' value='${deleteBtnText}' class="btn btn-danger btn-lg" ${onclickConfirmDelete}></input>
            </#if>
          </form>
          <hr>
          <#if allowNew>
            <div style="margin-top:10px;">${createNewUserTitle}:</div>
              <form name='${FORM_USER_NEW}' method='post' action='${newURL}' target='_self'>
                <input type='hidden' name='${PARM_COMMAND}' value='${COMMAND_INFO_NEW}'/>
                <label>${userIdLabel}</label>
                <input name='${PARM_NEW_NAME}' type="text" class="form-control input-lg"/>
                <input type='submit' name='${PARM_SUBMIT_NEW}' value='${newButtonValue}' class="btn btn-primary btn-lg" style="margin-top: 5px;"/>
              </form>
            </div>
          </#if>
        </div>
      </div>
    </div>
    </div>
  <#include "footer.ftl">
  </body>
</html>             