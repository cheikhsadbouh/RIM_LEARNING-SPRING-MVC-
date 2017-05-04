<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <met`a http-equiv="X-UA-Compatible" content="IE=edge">
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
  <c:set var="p" value="1" scope="application" />
  <div class=""
 style="
  /* column-width: 435px;  */
  column-width: 430px;
  column-gap: 5px; 
  padding: 5px;
"> 
 
    <c:forEach var="i" items="${lstprof}">
   <c:if test="${i.teacherId eq userid}">
   <c:set var="count" value="${count+1}" scope="application" />
   <div class="col-md-12 " style="">
     <div class="row">
     
        <div class=" col-md-12 col-xs-12">
        
        
            <div class="well well-sm well-social-post">
            
             
             
   
        <form id="postteach"  method="post" onsubmit=" return postvalid();">
            <ul class="list-inline  "  id='list_PostActions' onclick="">
                 <li class='active'><a href='#'  >Post</a></li>
                <!-- <li class='active'><a href='#'  >Update status</a></li>
                <li><a href='#d' data-toggle="tab">Add photos/Video</a></li>
                <li><a href='#' data-toggle="tab">Create photo album</a></li> -->
              
           
              <a href="#" id="op" class="   buttons" tooltip=" new training"></a>
              <a href="#" id="ops"  class=" buttons" tooltip="new group"></a>  
              
           
             <a href="#" class="buttons pull-right"   id="ii" onclick="addicon()"></a> 
    
   
            </ul>
           
            <div  id="walls" class="">
            
            <!-- ${user} -->
            <textarea   class="form-control"  id="area" placeholder="What's in your mind?"></textarea>
            
           
            
            
            </div>
            
            <ul class='list-inline post-actions ' >
                
                <li><a href="#" class='glyphicon glyphicon-paperclip'></a></li>
               
                 <li><a href="#" onclick="createinput()" class='fa fa-plus-circle fa-lg'></a></li>
                   <li><a href="#" class='fa fa-picture-o fa-lg'></a></li>
                  <li><a href="#" class='fa fa-microphone fa-lg'></a></li>
                  <li>
                  
       
       <button type="button" id="paymentbtn" value="Off" onclick="togglebtn()"  class="btn btn-lg btn-toggle" data-toggle="button" aria-pressed="false" autocomplete="off">
        <div class="handle">
        </div>
      </button>
                  
                  </li>
                
                <li class='pull-right'>
                
                <input type="submit" class="btn btn-default btn-sm" value="POST"  >
                </li>
            </ul>
        </form>
        
            </div>
        </div>
   </div> 
    </div>
    </c:if>
    
    </c:forEach><!-- end foreach post -->
   
    
    
    
   
    
    
 
  
 
 
  
    <c:forEach var="j" items="${lstpost}">

     <c:if test="${j.type_of_post eq 'simple'}">
     
      
     
   
  <div class=" col-md-6  " style=" width:auto; ">
   
    <div class="panel panel-success rounded shadow " id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="${j.teacher.urlPhoto}" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body ">
   <c:forEach var="i" items="${lstprof}">
    <c:if test="${i.teacherId  eq userid}">
   <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
   </c:if>
   </c:forEach>
    <a href="#" class="media-heading block mb-0 h4 text-white">
     <c:out value="${j.teacher.username}"></c:out>
    </a>
   
     </div>
     </div>
     </div>
     <div class="pull-right"> 
     <a href="#" class="text-white h5">
     3h heures</a>
     </div>
     <div class="clearfix"></div>
     </div>
     <div class="panel-body flex-grow no-padding " style=" width:auto;"> 
     
        <div class="well" style="     min-height: 105px; max-height: 300px;overflow: auto;">
       
        
          <p style="padding: 8px;"> <c:out value="${j.msg}"></c:out><br></p>
        
        
        </div>
    
    <div
class="actions"><div
class="btn-group"> 							
  
  <button type="button" class="btn btn-link"><i class="fa fa-thumbs-up"></i> 26 likes        </button> 
<button type="button" class="btn btn-link"><i class="fa fa-comments"> 23 comments</i></button>
						
							
												
</div>
<div
class="pull-right"><button type="button" class="btn btn-link">	<i class="fa fa-eye" aria-hidden="true">
 40 viewers</i></button></div></div>
     <div class="line no-margin">
     </div>
   
     <!--  -->
    
     <!-- end commenet 2 -->
     </div>
     <!-- footer commnent  -->
     <div class="panel-footer"> 
     <form>
     <a class="no-border pull-left" href="#" style=" margin-right: 3px;"> 
     <img class="media-object" src="<c:url value="${imguser}" />"
     
      id="imgpost">
         
      
       </a>
     <div class="input-group input-group-in no-border"> 
     <input class="form-control" placeholder="write comment...">
     <div class="input-group-btn"> 
     <button type="submit" class="btn">
     <i class="fa fa-chevron-circle-right"></i>
     </button>
     </div>
     </div>
     </form>
       

</div>
   
     
     </div>

    
    </div><!-- end simple post -->
    
    
    
    </c:if><!-- end verfication post is simple post ? -->
    
    <c:if test="${ j.type_of_post eq 'vote'}">
    
     
     <div class="col-md-6" style="  width:auto;">
     <div class="panel panel-success rounded shadow" id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="${j.teacher.urlPhoto}" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body">
    <c:forEach var="i" items="${lstprof}">
    <c:if test="${i.teacherId  eq userid}">
   <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
   </c:if>
   </c:forEach>
    <a href="#" class="media-heading block mb-0 h4 text-white">
    <c:out value="${j.teacher.username}"></c:out>
    </a>
    
     </div>
     </div>
     </div>
     <div class="pull-right"> 
     <a href="#" class="text-white h5">
     3h heures</a>
     </div>
     <div class="clearfix"></div>
     </div>
     <div class="panel-body no-padding"> 
       <div class="well" style="     min-height: 105px; max-height: 300px;overflow: auto;">
     
       
       
        

            <p style="padding: 8px;"> <c:out value="${j.msg}"></c:out></p>
        
        
      
           <c:set var="inputs" value="" scope="application" />
           
          </div>
         
     <div class="well" style="     min-height: 105px; max-height: 200px;overflow: auto;">
    
        		<ul class="list-group checked-list-box">
              <!--     <li class="list-group-item"><span class="glyphicon glyphicon-check"><input type="radio" class="" /></span> Cras justo odio</li>
                  <li class="list-group-item" data-checked="true"> <span  style="" class="glyphicon glyphicon-unchecked"></span> Dapibus ac facilisis in</li>
                  <li class="list-group-item">Morbi leo risus</li>
                  <li class="list-group-item">Porta ac consectetur ac</li>
                  <li class="list-group-item">Vestibulum at eros</li> -->
                 
        <!--     <input id="radio-1" class="radio-custom media-body" name="radio-group" type="radio" >
            <label for="radio-1" class="radio-custom-label">First Choice</label>
        
       
            <input id="radio-2" class="radio-custom media-body"name="radio-group" type="radio">
            <label for="radio-2" class="radio-custom-label">Second Choice</label> -->
            
            <c:forEach var="item" items="${j.vote}">
            
              <li class="" style="    
              display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;">
                  
  
                  <div class="">
     <div class="pull-left"> 
      <input id="radio-${p}" class="radio-custom " name="radio-group" type="radio" >
            <label for="radio-${p}" class="radio-custom-label">
            <c:out value="${item.vote_content}" />
            </label>
     </div>
      <c:set var="p" value="${p+1}" scope="application" />
     <div class="media-body"> 
     <span class="h4">  </span> 
    
      
     <span class="pull-right"><a href="#" class="btn btn-xs btn-default btn-circle">+4</a></span>

     </div>
     </div> <!-- titre video -->
                    </li>
                   
              </c:forEach>
  
                 
                </ul>
            </div> 

    <div
class="actions"><div
class="btn-group"> 							
  
  <button type="button" class="btn btn-link"><i class="fa fa-thumbs-up"></i> 26 likes        </button> 
<button type="button" class="btn btn-link"><i class="fa fa-comments"> 23 comments</i></button>
						
							
												
</div>
<div
class="pull-right"><button type="button" class="btn btn-link">	<i class="fa fa-eye" aria-hidden="true">
 40 viewers</i></button></div></div>
     <div class="line no-margin">
     </div>
    
     
     
    
     </div>
     <!-- footer commnent  -->
     <div class="panel-footer"> 

<form>
     <a class="no-border pull-left" href="#" style=" margin-right: 3px;"> 
      <img class="media-object" src="<c:url value="${imguser}" />"
     
      id="imgpost"> </a>
     <div class="input-group input-group-in no-border"> 
     <input class="form-control" placeholder="write comment...">
     <div class="input-group-btn"> 
     <button type="submit" class="btn">
     <i class="fa fa-chevron-circle-right"></i>
     </button>
     </div>
     </div>
     </form>

</div>
     
     
     </div>
       
   </div>
    
    </c:if><!-- end verfication post is vote post ? -->
    
    <c:if test="${ j.type_of_post eq 'payment'}">
     <div class="col-md-6" style="  width:auto;">
    
    <div class="panel panel-success rounded shadow" id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="${j.teacher.urlPhoto}" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body">
   <c:forEach var="i" items="${lstprof}">
    <c:if test="${i.teacherId  eq userid}">
   <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
   </c:if>
   </c:forEach>
    <a href="#" class="media-heading block mb-0 h4 text-white">
     <c:out value="${j.teacher.username}"></c:out>
    </a>
    
     </div>
     </div>
     </div>
     <div class="pull-right"> 
     <a href="#" class="text-white h5">
     3h heures</a>
     </div>
     <div class="clearfix"></div>
     </div>
     <div class="panel-body no-padding"> 
           <div class="well" style="     min-height: 105px; max-height: 300px;overflow: auto;">
     
            <p style="padding: 8px;"> <c:out value="${j.msg}"></c:out></p>
    
          </div>
          
         <button type="button" class="btn btn-primary btn-lg btn-block" style="
             color: #fff;
    background-color: #71c9c6;
    border-color: #71c9c6;
         ">payment</button>
          
    <div
class="actions"><div
class="btn-group"> 							
  
  <button type="button" class="btn btn-link"><i class="fa fa-thumbs-up"></i> 26 likes        </button> 
<button type="button" class="btn btn-link"><i class="fa fa-comments"> 23 comments</i></button>
						
							
												
</div>
<div
class="pull-right"><button type="button" class="btn btn-link">	<i class="fa fa-eye" aria-hidden="true">
 40 viewers</i></button></div></div>
     <div class="line no-margin">
     </div>
     
   
     <!--  -->
     
     <!-- end commenet 2 -->
     </div>
     <!-- footer commnent  -->
     <div class="panel-footer"> 
     <form>
     <a class="no-border pull-left" href="#" style=" margin-right: 3px;"> 
     <img class="media-object" src="<c:url value="${imguser}" />"
     
      id="imgpost"></a>
     <div class="input-group input-group-in no-border"> 
     <input class="form-control" placeholder="write comment...">
     <div class="input-group-btn"> 
     <button type="submit" class="btn">
     <i class="fa fa-chevron-circle-right"></i>
     </button>
     </div>
     </div>
     </form>


</div>
     
     
     </div>
     
    </div><!-- end payment post -->
    
    
    </c:if><!-- end verfication post is payment post ? -->
    
    </c:forEach>
   <!-- poster -->
   <br> <br> <br>
   
</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
 
 <script type="text/javascript">
 
 
 
 
 
 </script>
     
 
  </body>
  
     
 
 
</html>





















  