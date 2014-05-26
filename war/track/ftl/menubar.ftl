<!-- Static navbar -->
<!--#assign gts=JspTaglibs["./Track"]-->
      <div class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Easy Track GTS</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
             <#list menuNameMap?keys as menu>
                <#assign submenuMap = menuNameMap[menu]!>
                <#if submenuMap?has_content>
                    <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">${menu} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                    <#list submenuMap as submenu>
                        <li>${submenu}</li>
                    </#list>
                    </ul>
                    </li>
                    
                <#else>
                    <li class="active"><a href="#">${menu}</a></li>
                </#if>
              </#list>
             </ul>
             <a href="Track?page=login"><img style="float:right; margin-top:10px;" src="track/images/logout-icon.png" width='40'height='40'/></a>
             <form class="navbar-form navbar-right" style="margin-right:10px;">
            <input type="text" class="form-control" placeholder="Search...">
  
              </form>
             
      
          </div><!--/.nav-collapse -->
           
        </div><!--/.container-fluid -->
        
      </div>