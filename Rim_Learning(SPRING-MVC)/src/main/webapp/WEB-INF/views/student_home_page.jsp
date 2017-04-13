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
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
  
  </head>
  <body>
  
  <!-- Navigation -->
    <nav class="navbar navbar-default  navbar-fixed-top " >
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
            <span style="color:#71c9c6;">  <b>Rim</b> Learning </span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                <ul class="nav navbar-nav navbar-right" id="menu">
                    <li>
                        <a href="<c:url value="/news #home" />" id="div1"><span class="glyphicon glyphicon-home"></span> Page d'accueil</a>
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
      <a href="#">
                   <span   class="fa fa-bell fa-fw" aria-hidden="true"  ></span> notification</a>
    
    
      </li>
                  
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
     <img data-no-retina="" id="imgprofile" class="img-circle img-responsive img-bordered-primary" src="<c:url value="/resources/img/avatar6.png" />" alt="student">
     </li>
     <li class="text-center">
     <script type="text/javascript">
     var r= '<c:out value="${sessionScope.name}" />' ;
     var section= '<c:out value="${sessionScope.sec}" />';
     var primary='<c:out value="${sessionScope.primary}" />';
   
     localStorage.setItem("username",r);
     localStorage.setItem("pr",primary);
     localStorage.setItem("section",section);
     </script>
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
     <a href=""  class="btn btn-default text-center btn-block">Mes Cours
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
    
    
    
    
    
    
    
    
  <!-- end mes group & formation -->  
    
<div id="group">

<div  class="panel-group" >
      
     

   <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Groupes science</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
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
     <a href="" class="btn btn-default text-center btn-block">joindre</a>
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
<a href="" class="btn btn-default text-center btn-block">joindre</a>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div><!-- groups sceince -->
      <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Groupes mathématique</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
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
     <a href="" class="btn btn-default text-center btn-block">joindre</a>
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
<a href="" class="btn btn-default text-center btn-block">joindre</a>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div><!-- groups math -->  
                
      <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Groupes physique</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
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
     <a href="" class="btn btn-default text-center btn-block">joindre</a>
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
<a href="" class="btn btn-default text-center btn-block">joindre</a>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div><!-- groups physique -->
            <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Groupes français</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
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
     <a href="" class="btn btn-default text-center btn-block">joindre</a>
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
<a href="" class="btn btn-default text-center btn-block">joindre</a>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div><!-- groups francais -->
            <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Groupes  arabe</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
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
     <a href="" class="btn btn-default text-center btn-block">joindre</a>
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
<a href="" class="btn btn-default text-center btn-block">joindre</a>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div><!-- groups arabe -->
            <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Groupes anglais</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
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
     <a href="" class="btn btn-default text-center btn-block">joindre</a>
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
<a href="" class="btn btn-default text-center btn-block">joindre</a>
     </div>
     </div> <!-- end comment 1 -->
                  
                  
                  
                  </li>
                 
                </ul>
                </div>
                
                </div>
            </div><!-- groups anglais -->
      
      
     
      </div><!-- end panel groups  items -->
      
</div>
 </div><!-- end of col-X -->
      </div><!-- fixed -->
   <div class="col-lg-9 col-md-9 col-sm-8">
   <div class="row" id="target">
 
 
     
     
     </div><!-- end row -->
     
     
  </div><!-- col-x deux -->
  </div><!-- row principale -->
  </div><!-- container hole -->
  
  
  
    
   
   
    
  
  
  
  
  
   








 




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/player.js"/>"></script>
 
       <script src="<c:url value="/resources/js/student_home_page.js"/>"></script>
       
     
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


	
	$(document).ready(function () {
		
		$('#target').load('/rim_learning_spring_mvc/news #home');

	});
	
	
    // Your fnNamt function here

  
    

</script>
     
     
 
  </body>
</html>





















