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
      
      
      
    
	  <#include "menubar.ftl">
	  
      
     
    
            <div class="sidebar ">
<!--<div class="col-md-8 ">-->
 <div class="panel panel-primary">
    <div class="panel-heading">Change Your Password</div>
    <div class="panel-body">
        <form class="form-group">
            <label>Old Password</label>
            <input class="form-control input-lg" type='text'/>
             <label>New Password</label>
            <input class="form-control input-lg" type='text'/>
             <label>Confirm Password</label>
            <input class="form-control input-lg" type='text'/>
            <input type="submit" value="Change" class="btn btn-primary" style="margin-top: 10px;"/>
            <button type='submit' class="btn btn-primary" style="margin-top: 10px;"> Cancel</button>
                    
                   
        </form>
    </div>
 </div>
            </div>
           <#include "footer.ftl">
  </body>
</html>