<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>
  
   
    <!-- Bootstrap -->
 
      <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">


    <!-- my style -->
   
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
     
      <link href="<c:url value="/resources/css/student_home_page.css" />"  rel="stylesheet">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
     
 <link href="<c:url value="/resources/datetimepicker/dist/material-datetime-picker.css" />" rel="stylesheet">


 

        <!-- bitdash player -->
  
  </head>
  <body id="bodys">
   <script type="text/javascript">
     var r= '<c:out value="${sessionScope.name}" />' ;
     var section= '<c:out value="${sessionScope.sec}" />';
     var primary='<c:out value="${sessionScope.primary}" />';
   
     localStorage.setItem("username",r);
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
                        <a href="<c:url value='/news/${sessionScope.primary} #home' />"" id="div1"><span class="glyphicon glyphicon-home"></span> Page d'accueil</a>
                    </li>
                    <li>
                      <li>
                      
        <a href="<c:url value="/cours #cours" />">
        
         
      <span class="fa fa-youtube-play" aria-hidden="true"> cours</span>
       
        
        
        </a> 
  
        
        </li>
                    
                   
                    <li>
                   <a href="#">
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
      Professeur <br>
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
      
       <div class="panel  panel-success ">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Mes groupes</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
                </div>
                <div class="panel-body" id="padingbody">
                 <div class="well" style="max-height: 100px;overflow: auto;">
                <ul class="list-group checked-list-box">    
                
                
                 <c:if test="${empty listgroup}">
                 
               <b>Pas de groupe</b> 
                 
                 
                 </c:if>
                  <c:forEach var="r" items="${listgroup}">
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
    

 </div><!-- end of col-X -->
      </div><!-- fixed -->
      
  
  
  
  
<%--   <div class="col-lg-4 col-md-4 col-sm-4  pull-right">
  
<div id="group">
<div  class="panel-group">
       <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Mes groupes</h3>
                    <span class="pull-right "><i class="glyphicon glyphicon-minus"></i></span>
                </div>
                <div class="panel-body" id="padingbody">
                 <div class="well" style="max-height: 100px;overflow: auto;">
                <ul class="list-group checked-list-box">      
                  <li class="list-group-item">
                  
                  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="/resources/img/group.png" />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#" class="h4">nom de group </a> 
     <small class="block text-muted">professeur : nom de professeur</small> <br>
     <em class="text-xs text-muted">nombre d'étudiants</em> 
      
     <span class="text-danger">26  étudiants</span>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                  <li class="list-group-item">
                  
                  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="/resources/img/group.png" />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#" class="h4">nom de group </a> 
     <small class="block text-muted">professeur : nom de professeur</small> <br>
     <em class="text-xs text-muted">nombre d'étudiants</em> 
      
     <span class="text-danger">26  étudiants</span>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div>
            </div></div>




</div><!-- 3th col --> --%>
<link href="<c:url value="/resources/css/notification.css" />" rel="stylesheet">
   <div class="col-lg-9 col-md-9 col-sm-8 ">
   
<div class="row" id="target">








     </div><!-- end row -->
     
     
  </div><!-- col-x deux -->
  
  </div><!-- row principale -->
  </div><!-- container hole -->
  
  
  
    
   
   
    
  
  
  
  
  
   








 



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
      <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
     <script src="<c:url value="/resources/js/student_home_page.js"/>"></script>
    <script src="<c:url value="/resources/js/player.js"/>"></script>

       <script src="<c:url value="/resources/js/notification.js"/>"></script>
    

 <script src="https://unpkg.com/babel-polyfill@6.2.0/dist/polyfill.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.js"></script>
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/rome/2.1.22/rome.standalone.js"></script> -->
  <script src="<c:url value="/resources/js/rome.js"/>"></script>

 <script src="<c:url value="/resources/datetimepicker/dist/material-datetime-picker.js"/>" charset="utf-8" ></script>
  

      
     
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
<script>

 function picker(){
	
    var picker = new MaterialDatetimePicker({})
   
      .on('submit', function(d) {
    	
        output.innerText = d;
        
      });

    var el = document.querySelector('a#ee');
    
    if(el){
    	
    	 el.addEventListener('click', function() {
    		
    		if(picker!=null){
    			picker.open();
    		}
    	      
    	      picker=null;
    	    }, false);
    }
   
   
} 
</script>
 
      <script type="text/javascript">
      
	
      
          
      
      
     
    
    
      $(document).ready(function(){
    var $menu = $('#menu'), 
        $target = $('#target');

    $menu.on('click', '> li > a', function(event) {
        var $this = $(this);
        event.preventDefault();
       $target.load($this.attr('href'));
      //  $('#result').load('ajax/test.html #container');
     


    });
    
    
    
   
});

 

$(document).ready(function(){
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
	
	
    // Your fnNamt function here

  
   $(document).ready(function(){
   
   /*   var i= setInterval(function(){
    	

    },10000); */
   
    
		
   /*  setInterval(function() {

		     
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
			}, 1000); */
    
    
    
    
   	
 
   
 var intervalId=   setInterval(function(){
	 

 	   if($('#new').length > 0){
 	
 	  
       	
           
       }
    	},1000);
 
 
 
    
    });



   
    	 $(document).ready(function() {
    		
    		 
    		 zero(); 
    		 
    		 
    	
  

    	 });


    
    	 
    	 function getgroup(grp){
   		  var primary='<c:out value="${sessionScope.primary}" />';
   		$('#target').load('/rim_learning_spring_mvc/mygroup/'+grp+'/'+primary+'  #home');
   	}

    		

    	
 
    		 
    		

</script>
     
     
 
  </body>
</html>





















