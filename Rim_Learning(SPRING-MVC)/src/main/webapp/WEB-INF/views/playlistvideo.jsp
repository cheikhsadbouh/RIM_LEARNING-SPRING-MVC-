<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

   
    <!-- Bootstrap -->
 
      <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
      

    <!-- my style -->
     <link href="<c:url value="/resources/css/playlist.css" />" rel="stylesheet">
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
  </head>
  <body > 
 
 <div class="col-lg-9 col-md-9 col-sm-8" id="palylist">
 
 <div class="col-lg-9 col-md-9 col-sm-8">
 
 
 
  <div class="player-wrapper">
  
    
     
     
    </div>
    
 
 
 
 
 
 </div><!-- end col1 -->
  <c:set var="count" value="1" scope="application" />
 <div class="col-lg-3 col-md-3 col-sm-4" >
 
         <div class="well" style="max-height: 900px;overflow: auto;">
    <ul class="list-group checked-list-box">   
                 <c:forEach var="i" items="${playlist}">
         <li class="list-group-item" onclick="playerv2('${pageContext.request.contextPath}${i.dashUrl}','${pageContext.request.contextPath}${i.hlsUrl}','rt${count}');">
                  
  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <i class="fa fa-play-circle fa-2x"></i>
     </div>
     <div class="media-body"> 
     <span class="h4"> ${i.title}</span> 
    
    
     <span class="pull-right"><c:out value="${count}"/></span>
  <c:set var="count" value="${count+1}" scope="application" />
     </div>
     </div> <!-- titre video -->
                    </li>
                  </c:forEach><!-- end foreach -->
                </ul>
                </div>
 </div><!-- end col 2 -->
 
 
 
 
 </div><!-- end div -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
      <script src="<c:url value="/resources/js/player.js"/>"></script>
     
      
      

 
 
  </body>
</html>