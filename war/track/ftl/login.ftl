<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html>
    <head>
        <title>Easy Track GTS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <link href="../css/style.css" rel="stylesheet"/>
        <link href="../css/sticky-footer.css" rel="stylesheet"/>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>
    <body>
    

        <!--header/Logo-->
        <div class="header-title">
        <!--<h1>GPS Tracking System</h1>-->
         <img style="margin-top:20px;" src="../images/logo.png" width="143" height="50" alt="jaysan"/>
        </div>
        <div class="container">
    <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">

  
      <form class="form-signin" role="form">
        <h2 class="form-signin-heading text-center" >sign in</h2>
        <input type="text" class="form-control" placeholder="Account" required autofocus>
         <input type="text" class="form-control" placeholder="Username" value="" required autofocus>
        <input type="password" class="form-control" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <a href="#">Forgot your Password?</a>
      </form>

    </div>
    </div>
    </div>
    </div>
        <!--If Username/Password is incorrect Show this Message-->
       <!-- <div class="alert alert-danger">
        <strong>Sorry!</strong> Unable to login.
      </div>-->
      <#include "footer.ftl">

    </body>
</html>