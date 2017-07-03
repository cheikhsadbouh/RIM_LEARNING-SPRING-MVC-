<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 



<div id="home" style="background:#ccc;  width:400px; border: 10px solid #ddd ;">
<video id="video" width="300" height="300" autoplay></video>

</div>




<br><br>
<script type="text/javascript">


var websocket = new WebSocket("ws://localhost:8080/rim_learning_spring_mvc/chatroomserverendpoint");


websocket.onopen = function () {
	
    console.log("Openened connection to websocket");
   
    
  
}///end onopen


</script>


<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
 <script src="<c:url value="/resources/js/user.js"/>"></script>



     
 
       
    
  
</body>
</html>