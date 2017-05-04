<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/clock.css" />" rel="stylesheet">
</head>
<body>




  

<div class="wrap">  
  <h1>Draft <strong>Countdown</strong></h1>

  <div class="countdown">
  
  
  <div class="col-xs-4 push-left">
    <div class="bloc-time days" data-init-value="24">
      <span class="count-title">Hours</span>

      <div class="figure days days-1">
        <span class="top" id="d"></span>
        <span class="top-back">
          <span>2</span>
        </span>
        <span class="bottom" id="da"></span>
        <span class="bottom-back">
          <span>2</span>
        </span>
      </div>

      <div class="figure days days-2">
        <span class="top" id="ds"></span>
        <span class="top-back">
          <span>4</span>
        </span>
        <span class="bottom"  id="df"></span>
        <span class="bottom-back">
          <span>4</span>
        </span>
      </div>
    </div>
  </div>
  <!-- -days -->
  
  
  
  
  
    <div class="col-xs-4">
  
    <div class="bloc-time hours" data-init-value="24">
      <span class="count-title">Hours</span>

      <div class="figure hours hours-1">
        <span class="top">2</span>
        <span class="top-back">
          <span>2</span>
        </span>
        <span class="bottom">2</span>
        <span class="bottom-back">
          <span>2</span>
        </span>
      </div>

      <div class="figure hours hours-2">
        <span class="top">4</span>
        <span class="top-back">
          <span>4</span>
        </span>
        <span class="bottom">4</span>
        <span class="bottom-back">
          <span>4</span>
        </span>
      </div>
    </div>
</div>
  <div class="col-xs-4">
    <div class="bloc-time min" data-init-value="0">
      <span class="count-title">Minutes</span>

      <div class="figure min min-1">
        <span class="top">0</span>
        <span class="top-back">
          <span>0</span>
        </span>
        <span class="bottom">0</span>
        <span class="bottom-back">
          <span>0</span>
        </span>        
      </div>

      <div class="figure min min-2">
       <span class="top">0</span>
        <span class="top-back">
          <span>0</span>
        </span>
        <span class="bottom">0</span>
        <span class="bottom-back">
          <span>0</span>
        </span>
      </div>
    </div>
</div>
  <div class="col-xs-4">
    <div class="bloc-time sec" data-init-value="0">
      <span class="count-title">Seconds</span>

        <div class="figure sec sec-1">
        <span class="top">0</span>
        <span class="top-back">
          <span>0</span>
        </span>
        <span class="bottom">0</span>
        <span class="bottom-back">
          <span>0</span>
        </span>          
      </div>

      <div class="figure sec sec-2">
        <span class="top">0</span>
        <span class="top-back">
          <span>0</span>
        </span>
        <span class="bottom">0</span>
        <span class="bottom-back">
          <span>0</span>
        </span>
      </div>
    </div>
     
</div>
</div>
</div>
 <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
 <script src="<c:url value="/resources/js/clock.js"/>"></script> 
</body>



</html>