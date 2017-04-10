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
   
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
     
      <link href="<c:url value="/resources/css/student_home_page.css" />" rel="stylesheet">
  </head>
  <body>
  
  <div id="home">
  
   <!-- poster  -->
   <div class="col-md-6">
   <div class="panel panel-success rounded shadow" id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="/resources/img/avatar1.png" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body">
    <a href="#" class="media-heading block mb-0 h4 text-white">nom professeur</a>
    
     </div>
     </div>
     </div>
     <div class="pull-right"> 
     <a href="#" class="text-white h5">
    Il y a 3h heures</a>
     </div>
     <div class="clearfix"></div>
     </div>
     <div class="panel-body no-padding"> 
     <img src="<c:url value="/resources/img/poster.png" />" alt="..." class="img-responsive full-width">
    <div
class="actions"><div
class="btn-group"> <button
type="button" class="btn btn-link"><i
class="fa fa-thumbs-o-up"></i> aimer</button> 
</div><div
class="pull-right"><strong>1.789</strong> personnes ont aimé cet article</div></div>
     <div class="line no-margin">
     </div>
     <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="/resources/img/avatar6.png" />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#" class="h4">user_name</a> <br>
     <small class="block text-muted">merci  ! prof </small> 
     <em class="text-xs text-muted pull-right"> 
     <span class="text-danger">Il y a 2 heures</span></em>
     </div>
     </div> <!-- end comment 1 -->
     <div class="line no-margin">
     </div>
     <!--  -->
     <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="/resources/img/avatar4.png" />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#" class="h4">user_name</a> <br>
     <small class="block text-muted">merci  ! prof </small> 
     <em class="text-xs text-muted pull-right"> 
     <span class="text-danger">Il y a 2 heures</span></em>
     </div>
     </div> <!-- end comment 1 -->
     <div class="line no-margin">
     </div>
     <!-- end commenet 2 -->
     </div>
     <!-- footer commnent  -->
     <div
class="panel-footer"> <input
type="email" class="form-control" placeholder="Write a comment..."></div>
     
     
     </div>
     
    </div>
     <div class="col-md-6">
     <div class="panel panel-success rounded shadow" id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="/resources/img/avatar1.png" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body">
    <a href="#" class="media-heading block mb-0 h4 text-white">nom professeur</a>
    
     </div>
     </div>
     </div>
     <div class="pull-right"> 
     <a href="#" class="text-white h5">
    Il y a 3h heures</a>
     </div>
     <div class="clearfix"></div>
     </div>
     <div class="panel-body no-padding"> 
     
     
     
     
     bonjour, <br>
     
     
    <div
class="actions"><div
class="btn-group"> <button
type="button" class="btn btn-link"><i
class="fa fa-thumbs-o-up"></i> aimer</button> 
</div><div
class="pull-right"><strong>1.789</strong> personnes ont aimé cet article</div></div>
    
     
     
    
     </div>
     <!-- footer commnent  -->
     <div
class="panel-footer"> <input
type="email" class="form-control" placeholder="Write a comment..."></div>
     
     
     </div>
     
     
     
     
     
     
     
     
     
     
     
     
     </div><!-- end deuxeime poster -->
     
  
  </div>
  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
 
     
      
 
 
 
  </body>
</html>





















  