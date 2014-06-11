<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Change Password|Easy Track GTS</title>
     <#include "header.ftl">
  </head>

  <body>
    <div class="sidebar ">
    <!--<div class="col-md-8 ">-->
      <div class="panel panel-primary">
        <div class="panel-heading">${chngPwdMenuTitle}</div>
        <div class="panel-body">
          <!--${enterCurrentLabel}-->
          <form name='Passwd' method='post' action='${pwdURL}' target='_self' class="form-group">
            <label>${oldPwdLabel}</label>
              <input type='password' name='${PARM_OLD_PASSWD}' value='' class="form-control input-lg"/>
            <label>${newPwdLabel}</label>
              <input type='password' name='${PARM_NEW1_PASSWD}' value='' class="form-control input-lg"/>
            <label>${confirmPwdLabel}</label>
              <input type='password' name='${PARM_NEW2_PASSWD}' value='' class="form-control input-lg"/>
            <input type="submit" name='${PARM_PWD_SUBMIT}' value="${changebtnValue}" class="btn btn-primary" style="margin-top: 10px;"/>
            <input type='submit' name='${PARM_BUTTON_CANCEL}' value='${cancelbtnValue}' onclick="javascript:openURL('${menuURL}','_self')" class="btn btn-primary" style="margin-top: 10px;"/>
        </form>
      </div>
    </div>
  </div>
  <#include "footer.ftl">
  </body>
</html>