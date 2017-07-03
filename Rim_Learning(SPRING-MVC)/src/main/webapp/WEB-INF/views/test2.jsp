 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="home" style="background:#ccc;  width:400px; border: 10px solid #ddd ;">
<video id="videos" width="300" height="300" autoplay></video>

</div>
<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/chat.js"/>"></script>
<script type="text/javascript">

var websocket = new WebSocket("ws://localhost:8080/rim_learning_spring_mvc/chatroomserverendpoint");


websocket.onopen = function () {
	
    console.log("Openened connection to websocket");
   

}
websocket.onmessage=function processMessage(message){
//	var video = document.getElementById('videos');

	console.log("get_stream");
	video.src = vendorUrl.createObjectURL(message);
	video.play();
	
}
</script>



 </body>
 
 
 
 
</html> 










