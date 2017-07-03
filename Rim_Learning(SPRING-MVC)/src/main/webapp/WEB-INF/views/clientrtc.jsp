
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <script src="<c:url value="/resources/webRTCMultiConnection/dist/RTCMultiConnection.min.js"/>"></script>
        <!-- custom layout for HTML5 audio/video elements -->
        <script src="https://cdn.webrtc-experiment.com/getMediaElement.js"></script>

        <!-- socket.io for signaling -->
      
        <script src="<c:url value="/resources/js/socketiob.js"/>"></script>
     
         <script src="<c:url value="/resources/webRTCMultiConnection/dev/FileBufferReader.js"/>"></script>
        <!-- capture screen from any HTTPs domain! -->
        <script src="https://cdn.webrtc-experiment.com:443/getScreenId.js"></script>
        
         <button id="join-room">join-room</button>
        <video id="m" controls></video>
        <video id="a" controls></video>
        <div id="chat-container">
    <input type="text" id="input-text-chat" placeholder="Enter Text Chat" disabled>
    <button id="share-file" disabled>Share File</button>
    <br>
    <div id="file-container"></div>
    <div class="chat-output"></div>
</div>
<hr>
        <script type="text/javascript">

        var connection = new RTCMultiConnection();
       
        connection.socketURL = 'http://localhost:9001/';
        connection.enableFileSharing = true; // by default, it is "false".
        connection.session = {
        	    audio: true,
        	    video: true,
        	    data : true
        	    
        	};
        connection.sdpConstraints.mandatory = {
        	    OfferToReceiveAudio: true,
        	    OfferToReceiveVideo: true
        	};
        	
        	
        	  
        	    document.getElementById('join-room').onclick = function() {
                  
        	    	connection.join('your-room-id');
        	    	
        	        

                };
                connection.onstream = function(event) {
                    if (event.type === 'local' ) {
                    	
                    }

                    if (event.type === 'remote') {
                    	console.log("is remote");
                        if (event.stream.isVideo) {
                            if (event.stream.getAudioTracks().length && event.stream.getVideoTracks().length) {
                                // Audio+Video stream
                            	//remoteVideo.src = URL.createObjectURL(event.stream);
                            	console.log("is remote video ");
                            	document.getElementById('m').src = URL.createObjectURL(event.stream);
                            } 
                    }
                        
                        if (event.stream.isScreen) {
                            // it is screen
                        	console.log("is remote screen ");
                        	document.getElementById('a').src = URL.createObjectURL(event.stream);
                        }
                }
                };
              
            
              //......................................................
              //................FileSharing/TextChat Code.............
              //......................................................
              document.getElementById('share-file').onclick = function() {
               var fileSelector = new FileSelector();
               fileSelector.selectSingleFile(function(file) {
                   connection.send(file);
               });
              };
              document.getElementById('input-text-chat').onkeyup = function(e) {
               if(e.keyCode != 13) return;
               
               // removing trailing/leading whitespace
               this.value = this.value.replace(/^\s+|\s+$/g, '');
               if (!this.value.length) return;
               
               connection.send(this.value+"<c:url value='/rim_learning_spring_mvc/resources/img/avatar1.png'/>");
               appendDIV(this.value+"<c:url value='/rim_learning_spring_mvc/resources/img/avatar1.png'/>");
               this.value =  '';
              };
              var chatContainer = document.querySelector('.chat-output');
              function appendDIV(event) {
               var div = document.createElement('div');
               div.innerHTML = event.data || event;
               alert(event.data+"                "+ event);
               chatContainer.insertBefore(div, chatContainer.firstChild);
               div.tabIndex = 0; div.focus();
               
               document.getElementById('input-text-chat').focus();
              }   
              connection.onmessage = appendDIV;
              connection.filesContainer = document.getElementById('file-container');
              connection.onopen = function() {
                  document.getElementById('share-file').disabled      = false;
                  document.getElementById('input-text-chat').disabled = false;
              };
        </script> 
</body>
</html>