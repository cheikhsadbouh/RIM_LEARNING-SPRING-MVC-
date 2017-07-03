<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


 
        
</head>
<body>




<div id="visio" class="row">

<div class="col-md-3 col-lg-3 colg-xs-10 ">

 <div class="embed-responsive embed-responsive-16by9">
 <video id="m"  style="margin-top: 0px; margin-left: 5px;"  
 controls="controls" class="embed-responsive-item" height="240" ></video>
 <br/>

 </div>
  <div class=" col-lg-5 col-md-5 col-sm-12 col-xs-12  ">
    <div class="card"> 
 
  <ul class="nav nav-tabs" role="tablist">
   <li role="presentation" class="active"><a href="#homes" aria-controls="home" role="tab" data-toggle="tab">online</a></li>
  </ul>
         <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="homes" style="overflow-y: auto;">
                                    <ul class="list-group checked-list-box">  
                                     <div class="   chat-users chat"  id="online-u">
                                    
                   
                          
                      </div>          
                                        </ul>
                                        </div>
                                        </div>
 </div>
 </div>
</div>

<div class="col-md-9 col-lg-9 col-xs-10">
<div class="col-md-11 col-md-push-1 bg-white "><div class="chat-message" style="    overflow: auto;
    overflow-x: hidden;
    min-height: 347px;
    max-height: 347px;
    overflow-y: auto;">
<ul class="chat"  id="chat-output"  style="    margin-top: -67px;">
</ul>
</div>
 <div class="chat-box bg-white"><div class="input-group"> <input  id="input-text-chat" class="form-control border no-shadow no-rounded" placeholder="Type your message here"> <span class="input-group-btn"> <button class="btn  no-rounded"  id="share-file" type="button" style="background-color: #71c9c6;
    color: #fff;"><i class="fa fa-upload" aria-hidden="true"></i>
 </button> </span></div></div></div>

</div><!-- end video screen -->
<div class="">

<div class="" >


 
</div><!-- end chat  -->
</div>


<style type="text/css">


.bg-white {
  background-color: #fff;
      margin-top: 3px;
    margin-left: -13px;
}

.friend-list {
  list-style: none;
margin-left: -40px;
}

.friend-list li {
  border-bottom: 1px solid #eee;
}

.friend-list li a img {
  float: left;
  width: 45px;
  height: 45px;
  margin-right: 0px;
}

 .friend-list li a {
  position: relative;
  display: block;
  padding: 10px;
  transition: all .2s ease;
  -webkit-transition: all .2s ease;
  -moz-transition: all .2s ease;
  -ms-transition: all .2s ease;
  -o-transition: all .2s ease;
}

.friend-list li.active a {
  background-color: #f1f5fc;
}

.friend-list li a .friend-name, 
.friend-list li a .friend-name:hover {
  color: #777;
}

.friend-list li a .last-message {
  width: 65%;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
}

.friend-list li a .time {
  position: absolute;
  top: 10px;
  right: 8px;
}

small, .small {
  font-size: 85%;
}

.friend-list li a .chat-alert {
  position: absolute;
  right: 8px;
  top: 27px;
  font-size: 10px;
  padding: 3px 5px;
}

.chat-message {
  padding: 60px 20px 115px;
}

.chat {
    list-style: none;
    margin: 0;
        
}

.chat-message{
    background: #f9f9f9;  
}

.chat li img {
  width: 45px;
  height: 45px;
  border-radius: 50em;
  -moz-border-radius: 50em;
  -webkit-border-radius: 50em;
}

img {
  max-width: 100%;
}

.chat-body {
  padding-bottom: 20px;
}

.chat li.left .chat-body {
  margin-left: 70px;
  background-color: #fff;
}

.chat li .chat-body {
  position: relative;
  font-size: 11px;
  padding: 10px;
  border: 1px solid #f1f5fc;
  box-shadow: 0 1px 1px rgba(0,0,0,.05);
  -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
}

.chat li .chat-body .header {
  padding-bottom: 5px;
  border-bottom: 1px solid #f1f5fc;
}

.chat li .chat-body p {
  margin: 0;
}

.chat li.left .chat-body:before {
  position: absolute;
  top: 10px;
  left: -8px;
  display: inline-block;
  background: #fff;
  width: 16px;
  height: 16px;
  border-top: 1px solid #f1f5fc;
  border-left: 1px solid #f1f5fc;
  content: '';
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  -moz-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
}

.chat li.right .chat-body:before {
  position: absolute;
  top: 10px;
  right: -8px;
  display: inline-block;
  background: #fff;
  width: 16px;
  height: 16px;
  border-top: 1px solid #f1f5fc;
  border-right: 1px solid #f1f5fc;
  content: '';
  transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
}

.chat li {
  margin: 15px 0;
}

.chat li.right .chat-body {
  margin-right: 70px;
  background-color: #fff;
}

.chat-box {
 
    position: fixed;
   
    left: 417px;
    right: 30px;
    top: 422px;
    padding: 15px;
    margin-right: 41px;
    /* margin-top: -114px; */
    margin-left: -59px;
    
  border-top: 1px solid #eee;
  transition: all .5s ease;
  -webkit-transition: all .5s ease;
  -moz-transition: all .5s ease;
  -ms-transition: all .5s ease;
  -o-transition: all .5s ease;
}

.primary-font {
  color: #3c8dbc;
}

a:hover, a:active, a:focus {
  text-decoration: none;
  outline: 0;
}


/*tabs teacher */
.nav-tabs { border-bottom: 2px solid #DDD; }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover { border-width: 0; }
    .nav-tabs > li > a { border: none; color: #71c9c6; }
        .nav-tabs > li.active > a, .nav-tabs > li > a:hover { border: none; color: #71c9c6 !important; background: transparent; }
        .nav-tabs > li > a::after { content: ""; background: #71c9c6; height: 2px; position: absolute; width: 100%; left: 0px; bottom: -1px; transition: all 250ms ease 0s; transform: scale(0); }
    .nav-tabs > li.active > a::after, .nav-tabs > li:hover > a::after { transform: scale(1); }
.tab-nav > li > a::after { background: #21527d none repeat scroll 0% 0%; color: #fff; }
.tab-pane { padding: 15px 0; }
.tab-content{padding:0px;
    height: 192px;
    margin-top: -2px;
}

.card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3); margin-bottom: 30px;
    margin-top: 9px;
    margin-left: -7px;
    width: 196px;
 }
#settings{    overflow: auto;
    overflow-x: hidden;
    min-height: 300px;
    max-height: 300px;
    
    }
  
  #homes{
  overflow: auto;
    overflow-x: hidden;
    min-height: 150px;
    max-height: 150px;
  }

.chat-users .user {
    position: relative;
    padding: 0 0 0 50px;
    display: block;
    cursor: pointer;
    margin: 0 0 20px;
}
.chat-users .user .avatar {
    top: 0;
    left: 0;
}
.chat .avatar {
    width: 40px;
    height: 40px;
    position: absolute;
}
.chat-users .user .name {
    font-size: 14px;
    font-weight: bold;
    line-height: 20px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.chat-users .user .mood {
    font: 200 14px/20px "Raleway", sans-serif;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.chat .avatar img {
    display: block;
    border-radius: 20px;
    height: 100%;
}
.chat .avatar .status.online {
    background: #4caf50;
}
.chat .avatar .status {
    width: 10px;
    height: 10px;
    border-radius: 5px;
    position: absolute;
}
.chat-users .user .status {
    bottom: 0;
    left: 28px;
}


</style>
<script>
var connection = new RTCMultiConnection();

// this line is VERY_important
 connection.socketURL = 'http://localhost:9001/';
 connection.enableFileSharing = true; // by default, it is "false".
 connection.session = {
 	    audio: true,
 	    video: true,
 	    data : true
 	    
 	};
connection.mediaConstraints = {
    video: true,
    audio: true
};

connection.sdpConstraints.mandatory = {
    OfferToReceiveAudio: true,
    OfferToReceiveVideo: true
};
connection.onstream = function(event) {
    if (event.type === 'local' ) {
    	if (event.stream.isVideo) {
            if (event.stream.getAudioTracks().length && event.stream.getVideoTracks().length) {
                // Audio+Video stream
            	//remoteVideo.src = URL.createObjectURL(event.stream);
            	console.log("is locale");
            	
            		document.getElementById('m').src = URL.createObjectURL(event.stream);
            	
            	
            } 
    	}
    }

    if (event.type === 'remote') {
    	console.log("is remote");
        if (event.stream.isVideo) {
            if (event.stream.getAudioTracks().length && event.stream.getVideoTracks().length) {
                // Audio+Video stream
            	//remoteVideo.src = URL.createObjectURL(event.stream);
            	
            } 
    }
}
};

connection.open('your-room-id');

function start(){
	 connection.mediaConstraints.video = true;
	    connection.addStream({
	        video: true,
	        audio: true,
	        screen: true,
	        broadcast: true
	    });
}

$(window).on('load', function () {
	     //insert all your ajax callback code here. 
	     //Which will run only after page is fully loaded in background.
		 strat();
	  });
	
//Using getScreenId.js to capture screen from any domain
// You do NOT need to deploy Chrome Extension YOUR-Self!!
connection.getScreenConstraints = function(callback) {
    getScreenConstraints(function(error, screen_constraints) {
        if (!error) {
            screen_constraints = connection.modifyScreenConstraints(screen_constraints);
            callback(error, screen_constraints);
            return;
        }
        throw error;
    });
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
 
 connection.send(this.value);
 appendDIV(this.value);
 this.value =  '';
};
var chatContainer = document.querySelector('.chat-output');
function appendDIV(event) {
 var div = document.createElement('div');
 div.innerHTML = event.data || event;
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