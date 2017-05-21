<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
      <!-- bitdash player -->
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
  
  </head>
  <body>
<div id="home">
<div class="row">

<div class="col-md-11 col-lg-11 col-xs-10  col-xs-offset-1 col-sm-11 col-sm-offset-1 col-lg-offset-1 col-md-offset-1">
    <div class="content-hero">
      <img class="content-hero-embed" src="https://images.pexels.com/photos/232/apple-iphone-books-desk.jpg?h=350&auto=compress&cs=tinysrgb" alt="cover">
      <div class="content-hero-overlay bg-grd-red"></div>
      <div class="content-hero-body">
        <div class="pull-right" role="group">
       
          <span  style="color: white;" class="fa fa-pencil-square-o fa-2x"></span>
        </div>
      </div>
    </div>
    
    <div class="content-hero content-hero-sm">
      <div class="row">
        <div class="col-md-6 col-xs-8">
        
          <div class="media">
            <div class="media-left">
              <a class="kit-avatar kit-avatar-64 no-padding border-white hidden-xs" href="#">
                <img alt="cover" src="/rim_learning_spring_mvc${infogrp.urlPhoto}">
              </a>
              <a class="kit-avatar kit-avatar-42 no-padding border-white visible-xs" href="#">
                <img alt="cover" src="/rim_learning_spring_mvc${infogrp.urlPhoto}">
              </a>
            </div>
            <div class="media-body">
              <h2 class="display-name media-heading text-red hidden-xs">${infogrp.groupName}</h2>
              <h3 class="display-name media-heading text-red visible-xs">${infogrp.groupName}</h3>
              <c:forEach var="s" items="${infogrp.teacher}">
              <p class="text-muted"><span class="mr-2x">Created By  ${s.firstName} ${s.lastName}</span></p>
            </c:forEach>
            </div><!-- /.pull -->
          </div>
          
        </div><!-- /.cols -->
    
        <div class="col-md-2 col-xs-4 col-md-push-4 text-right">
          <a href="#" rel="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" aria-label="Poke" data-original-title="Jawil sitik"><i class="fa fa-thumbs-o-up"></i></a>
        </div><!-- /.cols -->
    
        <div class="col-md-4 col-xs-12 col-md-pull-2 text-center">
          <div class="row">
            <div class="col-xs-4">
              
            </div><!-- /.cols -->
            
            <div class="col-xs-4">
            <c:set var="studetnN" value="0" scope="application" />
            <c:forEach var="q" items="${infogrp.joinedgroupStudent}">
             <c:set var="studetnN" value="${ studetnN + 1}" scope="application" />
            </c:forEach>
              <div class="p-1x">
                <span class="headline"><strong>${studetnN}</strong></span>
                
                <p>Students</p>
             
              </div>
              
            </div><!-- /.cols -->
            <div class="col-xs-4">
              <div class="p-1x">
                <span class="headline"><strong>2,4K</strong></span>
                <p>Liked</p>
              </div>
            </div><!-- /.cols -->
          </div><!-- /.row -->
        </div><!-- /.cols -->
      </div><!-- /.row -->
    </div>


<!-- end cover  group -->

  <c:set var="sds" value="1" scope="application" />
<div  class="">
    <div class=" col-lg-5 col-md-5 col-sm-12 col-xs-12  pull-right"  style="    margin-right: -3.666667%;">
<c:forEach var="i" items="${lstprof}">
     <c:if test="${i.teacherId eq userid}">
     <c:set var="sds" value="${sds+1}" scope="application" />
 <c:set var="howis" value="teacher" scope="application" />
    <div class="card">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#homes" aria-controls="home" role="tab" data-toggle="tab">online</a></li>
                                       
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">post validation</a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="homes" style="overflow-y: auto;">
                                    <ul class="list-group checked-list-box">  
                                     <div class="   chat-users chat">
                                     <c:forEach var="e" items="${alluser}">
                                       <li class="list-group-item">
                                        <div class="user">
                    <div class="avatar">
                    <img src="<c:url value="${e.students.urlPhoto}" />" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">${e.students.username}</div>
                    <div class="mood"></div>
                </div>
                </li>
                     </c:forEach>        
                      </div>          
                                        </ul>
                                        </div>
                                       
                                        
                                      <div role="tabpanel" class="tab-pane" id="settings" style="overflow-y: auto;">
                                         <div >
                <ul class="list-group checked-list-box"  style=" padding-left: 0px;
    padding-right: 0px;
    margin-bottom: 20px;"> 
                
                <c:forEach var="emp" items="${list_temp_post}">
                <li class="list-group-item"  style="overflow: hidden;
    padding: 0px;">
                                                   <div class=" col-md-12  col-xs-12    "  style="margin-left: 0.333333%;">
   
    <div class="panel panel-success rounded shadow   " id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <div class="media">
    
   <div class="media-object pull-left"> 
   <img src="<c:url value="${emp.studentpost.urlPhoto}" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body ">
   <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
  
    <a href="#" class="media-heading block mb-0 h4 text-white">
     <c:out value="${emp.studentpost.username}"></c:out>
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
       
        
          <p style="padding: 8px;"> <c:out value="${emp.content}"></c:out><br></p>
        
        
        </div>
    
    <div
class="actions"><div
class="btn-group"> 							
  
  <button type="button" class="btn btn-link" onclick="postliked('${emp.idpost}')"><i class="fa fa-thumbs-up"></i>  likes        </button> 

						
							
												
</div>
<div
class="pull-right"><button type="button" class="btn btn-link">	<i class="fa fa-thumbs-down"" aria-hidden="true">
 dislikes</i></button></div></div>
     <div class="line no-margin">
     </div>
   
     <!--  -->
    
     <!-- end commenet 2 -->
     </div>
     <!-- footer commnent  -->
     
     
     </div>

    
    </div><!-- end simple post -->
                
                
                
                </li>
                <br>
                </c:forEach>  
                </ul>
                </div>
                                        
                                        
                                        
                                        
                                        
                                        
      
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        </div><!-- end content  -->
                            </div>
                            </div>
                          
</c:if>
</c:forEach>

<c:if test="${sds eq '1'}">

<c:set var="howis" value="student" scope="application" />

    <div class="card">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#homes" aria-controls="home" role="tab" data-toggle="tab">online</a></li>
                                       
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="homes" style="overflow-y: auto;">
                                    <ul class="list-group checked-list-box">  
                                     <div class="   chat-users chat">
                  <c:forEach var="e" items="${alluser}">
                                       <li class="list-group-item">
                                        <div class="user">
                    <div class="avatar">
                    <img src="<c:url value="${e.students.urlPhoto}" />" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">${e.students.username}</div>
                    <div class="mood"></div>
                </div>
                </li>
                     </c:forEach>          
                      </div>          
                                        </ul>
                                        </div>
                                        </div></div>
            

</c:if>
</div><!-- 3th col --> 


</div>


<!-- end side panel -->




<!-- begin posts  -->
 <div class="col-md-7 col-xs-12 custom " style="  margin-left: -3.666667%;">
 
 

     <div class="row">
     
        <div class=" col-md-12 col-xs-12">
        
        
            <div class="well well-sm well-social-post">
            
             
             
   
        <form id="newpostgrp"  method="post" onsubmit="return validgrp_post()">
            <ul class="list-inline  "  id='list_PostActions' onclick="">
                 <li class='active'><a href='#'  >Post</a></li>
                <!-- <li class='active'><a href='#'  >Update status</a></li>
                <li><a href='#d' data-toggle="tab">Add photos/Video</a></li>
                <li><a href='#' data-toggle="tab">Create photo album</a></li> -->
              
           
             
   
            </ul>
           
            <div  id="walls" class="">
            
            <!-- ${user} -->
            <textarea   class="form-control" id="content" name="content" placeholder="What's in your mind?"></textarea>
            
           
            <input type="hidden" name="iduser" value="${userid}">
             <input type="hidden" name="howis" value="${howis}">
              <input type="hidden" name="idgrps" value="${idgrps}">
            </div>
          <span id="output" style=""></span>
            <ul class='list-inline post-actions ' >
         
           
               
                   <li><a href="#" class='fa fa-picture-o fa-lg'></a></li>
                  <li><a href="#" class='fa fa-microphone fa-lg'></a></li>
                
                
                <li class='pull-right'>
                
                <input type="submit" class="btn btn-default btn-sm" value="POST"  >
                </li>
            </ul>
        </form>
        
            </div>
        </div>
   </div> 
    </div>
    





<c:forEach var="u" items="${allpost}">
   
  <div class="col-md-7 col-xs-12 custom " style="  margin-left: -3.666667%;">
   
    <div class="panel panel-success rounded shadow   " id="borderheader">
   <div class="panel-heading no-border" id="header">
   <div class="pull-left half">
   <c:if test="${not empty u.teacher_grp_post}">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="${u.teacher_grp_post.urlPhoto}" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body ">
   
   <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
  
    <a href="#" class="media-heading block mb-0 h4 text-white">
     <c:out value="${u.teacher_grp_post.username}"></c:out>
    </a>
   
     </div>
     </div>
     </c:if>
      <c:if test="${not empty u.student_grp_post}">
   <div class="media">
   <div class="media-object pull-left"> 
   <img src="<c:url value="${u.student_grp_post.urlPhoto}" />" alt="..." class="img-rounded img-post">
   </div>
   <div class="media-body ">
   
   <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
  
    <a href="#" class="media-heading block mb-0 h4 text-white">
     <c:out value="${u.student_grp_post.username}"></c:out>
    </a>
   
     </div>
     </div>
     </c:if>
     </div>
     <div class="pull-right"> 
     <a href="#" class="text-white h5">
     3h heures</a>
     </div>
     <div class="clearfix"></div>
     </div>
     <div class="panel-body flex-grow no-padding " style=" width:auto;"> 
     
        <div class="well" style="     min-height: 105px; max-height: 300px;overflow: auto;">
       
        
          <p style="padding: 8px;"> <c:out value="${u.content}"></c:out><br></p>
        
        
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

</c:forEach>
</div><!-- end cover  -->

  
   

<style>
.content-hero:first-child {
    margin-top: 4px;
}

.content-hero {
    position: relative;
    padding: 15px;
    margin-right: -15px;
    margin-left: -15px;
    margin-bottom: 30px;
    background-color: #fff;
    min-height: 150px;
    overflow: hidden;
}
.content-hero .content-hero-embed {
    position: absolute;
    top: 0;
    right: 0;
    width: 100%;
    z-index: 3;
}
.content-hero .content-hero-overlay {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 2;
    background-color: #F5F7FA;
    opacity: .6;
    filter: alpha(opacity=60);
}
.bg-grd-red {
}
.content-hero .content-hero-body {
    position: relative;
    z-index: 3;
}
.content-hero+.content-hero {
    margin-top: -30px;
}
.content-hero.content-hero-sm {
    min-height: 80px;
}
.content-hero {
    position: relative;
    padding: 15px;
    margin-right: -15px;
    margin-left: -15px;
    margin-bottom: 30px;
    background-color: #fff;
    min-height: 150px;
    overflow: hidden;
}

.media:first-child {
    margin-top: 0;
}
.kit-avatar.kit-avatar-64 {
    border: 2px solid rgba(22,24,27,.12);
    border-radius: 64px;
}
a.kit-avatar {
    color: inherit;
    text-decoration: none;
}
.kit-avatar {
    position: relative;
    display: inline-block;
    padding: 2px;
    text-align: center;
    transition: border-color ease .3s;
}
.border-white {
    border-color: #fff!important;
}
.kit-avatar.kit-avatar-64>img {
    width: 64px;
    height: auto;
    border-radius: 32px;
}
.kit-avatar.kit-avatar-42 {
    border: 2px solid rgba(22,24,27,.12);
    border-radius: 42px;
}
a.kit-avatar {
    color: inherit;
    text-decoration: none;
}
.kit-avatar {
    position: relative;
    display: inline-block;
    padding: 2px;
    text-align: center;
    transition: border-color ease .3s;
}
.border-white {
    border-color: #fff!important;
}
.kit-avatar.kit-avatar-42>img {
    width: 42px;
    height: auto;
    border-radius: 21px;
}

.text-red {
    color: #000!important;
}
.h2, .headline, h2 {
    font-size: 24px;
    font-weight: 400;
    line-height: 32px;
}
.text-red {
    color: #000!important;
}
.col-lg-offset-1 {
    margin-left: 6.333333%;
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
.tab-content{padding:0px}

.card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3); margin-bottom: 30px; }
#settings{    overflow: auto;
    overflow-x: hidden;
    min-height: 300px;
    max-height: 300px;}
  
  #homes{
  overflow: auto;
    overflow-x: hidden;
    min-height: 300px;
    max-height: 300px;
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










</div>
</div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    
     <script src="<c:url value="/resources/js/player.js"/>"></script>
       <script src="<c:url value="/resources/js/student_home_page.js"/>"></script>
  
</body></html>
