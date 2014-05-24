<!DOCTYPE html>

<html>
    <head>
        <title> GPS Tracking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <#include "header.ftl">
    <script>
      
	$(document).ready(function () {
	$('label.tree-toggle').click(function () {
		$(this).parent().children('ul.tree').toggle(300);
                $(this).find("span").toggleClass(" glyphicon-chevron-up  glyphicon-chevron-down");
	});
});



    </script>
   
    </head>
    <body>
        <#include "menubar.ftl">
  

  <div class="row">
      <div class="col-md-3">
          <div class="well">
              <div>
                  <ul class="nav ">
                      <li class="active">
                          <a href="#"> <label label-default="" nav-header style="color:#999">  Home</label></a>                      
                      </li>
                      <li>
                      
                          <label label-default="" class="tree-toggle nav-header menu-" style="color:#999">Mapping&nbsp;<span class="glyphicon glyphicon-chevron-up"></span></label>                      
                      <ul class="nav tree">
                          <li><a href="#">Vehicle Map</a>
                          </li>
                          <li><a href="#">Group Map</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                          <label label-default="" class="tree-toggle nav-header" style="color:#999">Reports&nbsp;<span class="glyphicon  glyphicon-chevron-up"></span> </label>
                        <ul class="nav tree">
                          <li><a href="#">Vehicle Detail</a>
                          </li>
                          <li><a href="#">Group Detail</a>
                          </li>
                          <li><a href="#">Group Summary</a>
                          </li>
                           <li><a href="#">Performance</a>
                          </li>
                        </ul>
                          <li>
                              <label label-default="" class="tree-toggle nav-header" style="color:#999">Administration&nbsp;<span class="glyphicon glyphicon-chevron-up"></span> </label>
                            <ul class="nav tree">
                              <li><a href="#">Account Admin</a>
                              </li>
                              <li><a href="#">User Admin</a>
                              </li>
                              <li><a href="#">Vehicle Admin</a>
                              </li>
                              <li><a href="#">Group Admin</a>
                              </li>
                               <li><a href="#">GeoZone Admin</a>
                              </li>
                              <li><a href="#">Change Password</a>
                              </li>
                            </ul>
                              
                            </ul>
                          
                                              
                 
              </div>
          </div>
      </div>
  </div>
</div>
<#include "footer.ftl">
    </body>
</html>
