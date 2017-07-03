<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
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
   
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
     
      <link href="<c:url value="/resources/css/student_home_page.css" />" rel="stylesheet">
        <!-- bitdash player -->
  <script src="<c:url value="/resources/webRTCMultiConnection/dist/RTCMultiConnection.js"/>"></script>
        <!-- custom layout for HTML5 audio/video elements -->
        <script src="https://cdn.webrtc-experiment.com/getMediaElement.js"></script>
<!-- <script src="https://cdn.webrtc-experiment.com/FileBufferReader.js"></script> -->
 <script src="<c:url value="/resources/webRTCMultiConnection/dev/FileBufferReader.js"/>"></script>
        <!-- socket.io for signaling -->
      
        <script src="<c:url value="/resources/js/socketiob.js"/>"></script>
        
        <!-- capture screen from any HTTPs domain! -->
        <script src="https://cdn.webrtc-experiment.com:443/getScreenId.js"></script>
        
 
 <script src="<c:url value="/resources/js/rtcStudent.js"/>"></script>
  </head>
  <body onload="zero()">
   <script type="text/javascript">
     var r= '<c:out value="${sessionScope.name}" />' ;
     var section= '<c:out value="${sessionScope.sec}" />';
     var primary='<c:out value="${sessionScope.primary}" />';
     var imguser='<c:out value="${sessionScope.img}"/>';
     var nm= '<c:out value="${sessionScope.name}" />' ;
     
   console.log(imguser);
   localStorage.setItem("user",nm);
     localStorage.setItem("username",r);
     localStorage.setItem("im",imguser);
     localStorage.setItem("pr",primary);
     localStorage.setItem("section",section);
     </script>
  <!-- Navigation -->
    <nav class="navbar navbar-default  navbar-fixed-top " >
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
            <span style="color:#71c9c6;     font-family: 'Montez', cursive;">  <b>Rim</b> Learning </span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                <ul class="nav navbar-nav navbar-right" id="menu">
                    <li>
                        <a href="<c:url value="/news/${sessionScope.primary} #home" />" id="div1"><span class="glyphicon glyphicon-home"></span> Page d'accueil</a>
                    </li>
                    <li>
                      <li>
                      
        <a href="<c:url value="/cours #cours" />">
        
         
      <span class="fa fa-youtube-play" aria-hidden="true"> cours</span>
       
        
        
        </a> 
  
        
        </li>
                    
                   
                    <li>
                   <a  onclick="joinv();" >
                   <span  class="fa fa-video-camera" aria-hidden="true" ></span> visioconférence </a>
                   </li>
      <li>
      <!-- <a href="#">
                   <span   class="fa fa-bell fa-fw" aria-hidden="true"  ></span> notification</a> -->
    
     <div class="dropdown">
     
  <a id="dLabel" role="button"  class="dropdown-toggle "  data-toggle="dropdown" href="#" onclick="none();">
   <!--  <i class="glyphicon glyphicon-bell"></i> notification -->
  <div id="count" ><p id="number">0</p></div> 
      <span   class="fa fa-bell fa-fw fa-2x" aria-hidden="true"  ></span></a>
  </a>
  
  <ul class="dropdown-menu notifications" role="menu" aria-labelledby="dLabel">
    
   <div class="notification-heading"><h4 class="menu-title">Notifications</h4><h4 class="menu-title pull-right">View all<i class="glyphicon glyphicon-circle-arrow-right"></i></h4>
    </div>
     <li class="divider"></li>
     <div class="notifications-wrapper" id="notificationplace">
   
    
      
    
  
   

   </div>
    <li class="divider"></li>
    <div class="notification-footer"><br></div>
  </ul>
  
</div>
    
    
      </li><!-- end li notification -->
                  
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
  
  
  <div class="container bootstrap snippets">
    <div class="row">
    <div id="fixedrow">
     <div class="col-lg-3 col-md-3 col-sm-4" >
     <div class="panel rounded shadow" id="ma">
     <div class="panel-body">
     <div class="inner-all">
     <ul class="list-unstyled">
     <li class="text-center"> 
     <img data-no-retina="" id="imgprofile" 
     class="img-circle img-responsive img-bordered-primary" 
     src="<c:url value="${sessionScope.img}"/>" alt="student">
     </li>
     <li class="text-center">
    
     <h4 class="text-capitalize">
     
      <script type="text/javascript">
    document.write(localStorage.username);
     
     </script>
     
     </h4>
     <p class="text-muted text-capitalize">
       <script type="text/javascript">
    document.write(localStorage.section);
     
     </script>
     
     </p>
     </li>
     
     <li>
     <br>
     </li>
     <li>
     <div class="btn-group-vertical btn-block"> 
     <a href="" class="btn btn-default" id="btndefault">
     <i class="fa fa-cog pull-right"></i>Modifier le compte</a> <br>
     <a href="<c:url value="/cheikh" />" class="btn btn-default" id="btndefault">
     <i class="fa fa-sign-out pull-right"></i>Déconnexion</a></div></li></ul></div></div></div>
     <!-- end panel user profile -->
    
    
        
<div id="group">

   
<div  class="panel-group" >
<ul class="list-unstyled">
 

    <li> 
     <a href="<c:url value='/mycourses/${sessionScope.name}  #home' />" id="courses"  class="btn btn-default text-center btn-block">Mes Cours
     </a>
     </li>
     </ul>
      
       <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Mes groupes</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
                </div>
                <div class="panel-body" id="padingbody">
                 <div class="well" style="max-height: 100px;overflow: auto;">
                <ul class="list-group checked-list-box">      
                          <c:if test="${empty mygroups}">
                 
               <b>Pas de groupe</b> 
                 
                 
                 </c:if>
                  <c:forEach var="r" items="${mygroups}">
                  <li class="list-group-item">
                  
                  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="${r.urlPhoto} " />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#"  onclick="getgroup('${r.idGroups}')" class="h4" style="text-decoration: none;">${r.groupName} </a> 
    <br>
      
    <!--  <span class="text-danger">26  étudiants</span> -->
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
      
                 </c:forEach>
                 
                 
                </ul>
                </div>
                
                </div>
            </div>
            </div></div>
    
    
    
    
    
    
    
    
  <!-- end mes group & formation -->  
    
<div id="group">

<div  class="panel-group" >
      
                

 <c:set var="py" value="1" scope="application" />
<c:forEach var="item" items="${itemtsype}">
 <c:set var="count" value="1" scope="application" />
   <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Groupes <c:out value="${item}" /></h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
                </div>
                <div class="panel-body" id="padingbody">
                 <div class="well" style="max-height: 100px;overflow: auto;">
                <ul class="list-group checked-list-box">  
                  
                    <c:forEach var="grp" items="${listofgroups}">
                    
                     <c:if test="${grp.itemType eq item }">
                      <c:set var="count" value="${count+1}" scope="application" />
                  <li class="list-group-item">
                  
                  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="${grp.urlPhoto}" />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#" class="h4">${grp.groupName} </a> <br>
      <c:forEach var="n" items="${grp.teacher}">
     <small class="block text-muted"> ${n.username}</small> <br>
    </c:forEach>
     <a href="" class="btn btn-default text-center btn-block" 
      data-toggle="modal" data-target="<c:out value="#${py}py"/>">joindre</a>
     
     <!-- begin model payment ! -->
     <div id="<c:out value="${py}py"/>" class="modal fade" >
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" >
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div id="data" align="center">  
     <p>Titre de conference : </p>
       <p> Date : </p>
          <p>Prix: 1000 UM  </p>
     
     </div>
					
				</div>
		
		</div><!--.tabs-->
		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form class="signup-form"    id="<c:out value="${py}34"/>" >
<input type="text" class="input"  name="phone_user" id="phones" autocomplete="off"required title=" " placeholder="numéro de téléphone">                  
<input id="" type="hidden" class="form-control" name="groupid" value="<c:out value="${grp.idGroups}"/>"    >   
<input id="" type="hidden" class="form-control" name="PRICE" value="500" >   
<input id="" type="hidden" class="form-control" name="user" value="${sessionScope.name}">      
  <button  id="ibutton" type="submit" class="button btn"  onclick=" return validationgrpsub('<c:out value="${py}34"/>','<c:out value="${py}py"/>')">
  Envoyer la demande <i class="fa fa-sign-in fa-1x"></i></button>
            
				</form><!--.signup-form-->
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			
			</div><!-- end model-->
			<!-- end model payment  -->
     </div>
     </div> <!-- end comment 1 -->           
                  </li>
                  <c:set var="py" value="${py+1}" scope="application" />
                   </c:if>
                   
    </c:forEach>
     <c:if test="${count eq 1}">
                 
               <b>Pas de groupe</b> 
                 
                 
                 </c:if>
                </ul>
                </div>
                
                </div>
            </div><!-- groups sceince -->
        </c:forEach>
                  

      
      
     
      </div><!-- end panel groups  items -->
      
</div>
 </div><!-- end of col-X -->
      </div><!-- fixed -->
      <link href="<c:url value="/resources/css/notification.css" />" rel="stylesheet">
   <div class="col-lg-9 col-md-9 col-sm-8">
   <div class="row" >
<div class="row" id="target">






</div>
     
     
     </div><!-- end row -->
     
     
  </div><!-- col-x deux -->
  </div><!-- row principale -->
  </div><!-- container hole -->
  
  
  
    
   
   
    <!-- model group confirmation -->
    <div id="responsegrprst" class="modal fade" >
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" >
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					
					
				</div>
		
		</div><!--.tabs-->

		<div class="tabs-content" Style="background-color: #f6f7f9;
    border-radius: 11px;
    font-weight: bold;
    height: 203px;">
			<div id="signup-tab-content" class="active">
				 
		     
  
	<div id="data3">  
	<br>
    
  <p align="left"> 
       Merci pour votre fidélité,
       </p>
       
 <p align="center" >
une notification sera vous envoyez apres a voir envoyez credit !

</p>
 <div id="color">
   <p align="left"> </p>

       
 
 </div>
  
     
     </div>
  
					
					
					
					
				
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			
			</div><!-- end model -->
  
  
  
  
  
   








 




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
      <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
    
    <script src="<c:url value="/resources/js/player.js"/>"></script>
  
    <link href="<c:url value="/resources/css/notification.css" />" rel="stylesheet">
       <script src="<c:url value="/resources/js/student_home_page.js"/>"></script>
       <script src="<c:url value="/resources/js/notification.js"/>"></script>
       <div id="openv" class="modal fade" role="dialog">
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" align="center">
				
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				
		
				<b>Créer un nouvelle room </b>
					
				</div>
		
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form   onsubmit="return false;" class="signup-form">
				 
					<input type="text" class="input"  name="user" id="namegroup" autocomplete="off" placeholder="type id Room">
					 
    <div class="row">    
        <div class="col-xs-12 col-md-12  col-sm-12">  
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview">
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                   <!--   <button type="button" class="btn btn-default image-preview-clear" style="display:none;"> 
                         <span class="glyphicon glyphicon-remove"></span> Clear 
                   </button>  -->
                    <!-- image-preview-input -->
           
                    <div class="clearfix">
                                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 
        </div>
    </div>

		
		<div class="clearfix">
                                    </div>
		     
                <button  class="button btn"  onclick="joined()"><b>Open</b> <i class="fa fa-sign-in fa-1x"></i></button>
            
				</form><!--.signup-form-->
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			</div><!-- end model create group -->
     
   <style>
video {
    width: 100%;
    height: auto;
        margin-top: -64px;
}

  .bmpui-ui-watermark {
  display: none;
}
</style>   
 
      <script type="text/javascript">
      
	
      
      
     
    
    
$(function() {
    var $menu = $('#menu'), 
        $target = $('#target');

    $menu.on('click', '> li > a', function(event) {
        var $this = $(this);
        event.preventDefault();
       $target.load($this.attr('href'));
      //  $('#result').load('ajax/test.html #container');
     


    });
});

 

$(function() {
    var $menu = $('#courses'), 
        $target = $('#target');

    $menu.on('click', '', function(event) {
        var $this = $(this);
        event.preventDefault();
       $target.load($this.attr('href'));
      //  $('#result').load('ajax/test.html #container');
     

    });
});
	
	$(document).ready(function () {
		
		$('#target').load('/rim_learning_spring_mvc/news/'+localStorage.pr+' #home');
		
	//	$('#notificationplace').load('/rim_learning_spring_mvc/notificationstudent  #home');

	});
	
	function getgroup(grp){
		  var primary='<c:out value="${sessionScope.primary}" />';
		$('#target').load('/rim_learning_spring_mvc/mygroup/'+grp+'/'+primary+'  #home');
	}
	
    // Your fnNamt function here

  
    $(function() {
   
   /*   var i= setInterval(function(){
    	

    },10000); */
   
    
		
    setInterval(function() {
    	
		     
   		  var id=   '<c:out value="${sessionScope.name}" />';
		//$('').load('/rim_learning_spring_mvc/notificationstudent/'+id+  '');
			  $.ajax({
			    method: 'GET',
			    url: '/rim_learning_spring_mvc/notificationstudent/'+id,
			    success: function(res) {
			      console.log(res);
			    //  $('#notificationplace').html($(res).find('#home').html());
			      var content = $('<div>').append(res).find('#home');
			       $('#notificationplace').html( content );
			       
			    },
			   
			    async: false
			  });   
			}, 1000);
    
    
    
    
   	
 
   
 var intervalId=   setInterval(function(){
	 

 	   if($('#new').length > 0){
 	
 	  
       	
           
       }
    	},1000);
 
 
 
    
    });



function joinv(){
	
	
	
	
	$('#target').load('/rim_learning_spring_mvc/addMeIntoVisio   #visio');
	 $('#openv').modal('show');
}
function joined(){
	var input = document.getElementById("namegroup").value;
	$('#openv').modal('hide');
	startv(input);
	
}

</script>
     
     
 
  </body>
</html>





















