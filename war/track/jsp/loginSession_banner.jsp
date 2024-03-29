<%@ taglib uri="./Track" prefix="gts" %>
<%@ page isELIgnored="true" contentType="text/html; charset=UTF-8" %>
<%
//response.setContentType("text/html; charset=UTF-8");
//response.setCharacterEncoding("UTF-8");
response.setHeader("CACHE-CONTROL", "NO-CACHE");
response.setHeader("PRAGMA"       , "NO-CACHE");
response.setHeader("P3P"          , "CP='IDC DSP COR ADM DEVi TAIi PSA PSD IVAi IVDi CONi HIS OUR IND CNT'");
response.setDateHeader("EXPIRES"  , 0         );
%>
<!DOCTYPE html>

<gts:var ifKey="notDefined" value="true">
<!--
  See "logSession.jsp" for additional notes
  =======================================================================================
  Change History:
   2010/01/28  Martin D. Flynn
      -Initial Release
  =======================================================================================
-->
</gts:var>

<!-- Head -->
<head>

  <!-- meta -->
  <gts:var>
  <meta name="author" content="GeoTelematic Solutions, Inc."/>
  <meta http-equiv="content-type" content='text/html; charset=UTF-8'/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="cache-control" content='no-cache'/>
  <meta http-equiv="pragma" content="no-cache"/>
  <meta http-equiv="expires" content="0"/>
  <meta name="copyright" content="${copyright}"/>
  <meta name="robots" content="none"/>
  </gts:var>

  <!-- page title -->
<%--   <gts:var> 
  <title>${pageTitle}</title>
	 </gts:var> --%>

  <!-- default style -->
  <link rel='stylesheet' type='text/css' href='css/General.css'/>
  <link rel='stylesheet' type='text/css' href='css/MenuBar.css'/>
  <link rel='stylesheet' type='text/css' href='css/Controls.css'/>

  <!-- custom overrides style -->
  <link rel='stylesheet' type='text/css' href='custom/General.css'/>
  <link rel='stylesheet' type='text/css' href='custom/MenuBar.css'/>
  <link rel='stylesheet' type='text/css' href='custom/Controls.css'/>
  <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/navbar.css" rel="stylesheet">
     
      <link href="css/style.css" rel="stylesheet">
      
      <link href="css/sticky-footer.css" rel="stylesheet">

      <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css" />
  
      <link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all" />
    
  
     <!-- Custom styles for this template /-->
    
    
   

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
    
    <!--JavaScript-->
     
     <script src="js/jquery.min.js"></script>
     
     
    
  
  

  <!-- javascript -->
  <gts:track section="javascript"/>

  <!-- local style -->
  <style type="text/css">
    BODY { 
       
<gts:var if="isLocaleRTL" value="true">
        direction: RTL;
</gts:var>
    }
  
    }
  </style>

  <!-- page specific style -->
  <gts:track section="stylesheet"/>

  <!-- custom override style -->
  <link rel='stylesheet' type='text/css' href='custom/Custom.css'/>

</head>

<!-- ======================================================================================= -->

<body onload="<gts:track section='body.onload'/>" onunload="<gts:track section='body.onunload'/>">



<%--       <gts:var> 
     
        ${pageTitle}
       

		</gts:var> --%>

   
  
      <gts:var ifKey="isLoggedIn" value="true"><i>${i18n.Account}:</i> ${accountDesc} (${userDesc})</gts:var>
       <gts:var>&nbsp;${navigation}&nbsp;&nbsp;</gts:var>
  <!-- End Page header/navigation ======================================== -->

  <!-- Begin Page contents ======================================== -->
 
       
<%--           "<gts:track section='content.class.table'/>"  --%>
           
              <!-- The MenuBar is display iff 'content.class.table' is "contentTable"/"contentMapTable" -->
             <gts:track section="content.menubar"/>
           
<%--                <gts:track section='content.class.cell'/> --%>
                    <gts:track section="content.body"/>
                
<%--                <gts:track section='content.id.message'/>" class="<gts:track section='content.class.message'/>"> --%>
<%--                     <gts:track section="content.message"/> --%>
               
  <!-- End Page contents ======================================== -->

  <!-- Begin Page footer ======================================== -->
  
 
  
    
   
   
        
<%--          <gts:var>${copyright}</gts:var> --%>
     
<%--          <gts:var>${version}</gts:var> --%>
<%--          <gts:var ifTrue="login.showPiLink"><a style="font-size: 11pt; text-decoration: none;" href="${login.piLink=http://www.opengts.org}" target="_blank">&pi;</a>&nbsp;</gts:var> --%>
      
  <!-- End Page footer ======================================== -->


</body>

<!-- ======================================================================================= -->

</html>
