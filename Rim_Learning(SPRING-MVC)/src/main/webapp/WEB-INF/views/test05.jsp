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
     <link href="<c:url value="/resources/css/cours.css" />" rel="stylesheet">
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
      <!-- bitdash player -->
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
  
  </head>
  <body>
  
  <div id="home">

<div class="col-md-11 col-lg-11 col-xs-10  col-xs-offset-1 col-sm-11 col-sm-offset-1 col-lg-offset-1 col-md-offset-1">
    <div class="content-hero">
      <img class="content-hero-embed" src="http://lorempixel.com/250/250/nature/8/" alt="cover">
      <div class="content-hero-overlay bg-grd-red"></div>
      <div class="content-hero-body">
        <div class="pull-right" role="group">
          <a  class="btn btn-icon btn-default"><span class="fa fa-user"></span></a>
        </div>
      </div>
    </div>
    
    <div class="content-hero content-hero-sm">
      <div class="row">
        <div class="col-md-6 col-xs-8">
          <div class="media">
            <div class="media-left">
              <a class="kit-avatar kit-avatar-64 no-padding border-white hidden-xs" href="#">
                <img alt="cover" src="http://bootdey.com/img/Content/avatar/avatar1.png">
              </a>
              <a class="kit-avatar kit-avatar-42 no-padding border-white visible-xs" href="#">
                <img alt="cover" src="http://bootdey.com/img/Content/avatar/avatar1.png">
              </a>
            </div>
            <div class="media-body">
              <h2 class="display-name media-heading text-red hidden-xs">Angela Fowler</h2>
              <h3 class="display-name media-heading text-red visible-xs">Angela Fowler</h3>
              <p class="text-muted"><span class="mr-2x">Since April 21, 2010</span> <span><i class="fa fa-skype fa-fw hidden-xs"></i> (+44) 212 008 5656</span></p>
            </div><!-- /.pull -->
          </div>
        </div><!-- /.cols -->
    
        <div class="col-md-2 col-xs-4 col-md-push-4 text-right">
          <a href="#" rel="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" aria-label="Poke" data-original-title="Jawil sitik"><i class="fa fa-thumbs-o-up"></i></a>
          <a href="#" rel="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" aria-label="Send a Messege" data-original-title="Send a Messege"><i class="fa fa-envelope-o"></i></a>
        </div><!-- /.cols -->
    
        <div class="col-md-4 col-xs-12 col-md-pull-2 text-center">
          <div class="row">
            <div class="col-xs-4">
              <div class="p-1x">
                <span class="headline"><strong>1,5K</strong></span>
                <p>Activities</p>
              </div>
            </div><!-- /.cols -->
            <div class="col-xs-4">
              <div class="p-1x">
                <span class="headline"><strong>23</strong></span>
                <p>Events</p>
              </div>
            </div><!-- /.cols -->
            <div class="col-xs-4">
              <div class="p-1x">
                <span class="headline"><strong>2,4K</strong></span>
                <p>Followers</p>
              </div>
            </div><!-- /.cols -->
          </div><!-- /.row -->
        </div><!-- /.cols -->
      </div><!-- /.row -->
    </div>


<!-- end cover  group -->

  <c:set var="sds" value="1" scope="application" />
<div  class="row">
    <div class="col-lg-5 col-md-5 col-sm-11  pull-right"style="    margin-right: -3.666667%;">
<c:forEach var="i" items="${lstprof}">
     <c:if test="${i.teacherId eq userid}">
     <c:set var="sds" value="${sds+1}" scope="application" />
     

       
    
                                
</c:if>
</c:forEach>

<c:if test="${sds eq '1'}">

<div id="group">

<div  class="panel-group">
       <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                         Conference</h3>
                    <span class="pull-right "><i class=""></i></span>
                </div>
                <div class="panel-body" id="padingbody">
                     <div class="well" style="max-height: 71px;overflow: auto;">
                <ul class="list-group checked-list-box">      
                
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
                
                </ul>
                </div>
              
                </div>
            </div>
            
            
            
               
            </div><!-- end panel group1 -->
            
           
             
          
            </div><!-- end group1 -->
            

</c:if>
</div><!-- 3th col --> 


</div>


<!-- end side panel -->




<!-- begin posts  -->
 <div class="col-md-7 custom " style="  margin-left: -3.666667%;">
 
 

     <div class="row">
     
        <div class=" col-md-12 col-xs-12">
        
        
            <div class="well well-sm well-social-post">
            
             
             
   
        <form id="postgroup"  method="post" onsubmit=" return validgrp_post()">
            <ul class="list-inline  "  id='list_PostActions' onclick="">
                 <li class='active'><a href='#'  >Post</a></li>
                <!-- <li class='active'><a href='#'  >Update status</a></li>
                <li><a href='#d' data-toggle="tab">Add photos/Video</a></li>
                <li><a href='#' data-toggle="tab">Create photo album</a></li> -->
              
           
             
   
            </ul>
           
            <div  id="walls" class="">
            
            <!-- ${user} -->
            <textarea   class="form-control"  id="content" placeholder="What's in your mind?"></textarea>
            
           
            <input type="hidden" id="iduser" value="${sessionScope.primary}">
            
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
</div>

  
   

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
    color: #ED5565!important;
}
.h2, .headline, h2 {
    font-size: 24px;
    font-weight: 400;
    line-height: 32px;
}
.text-red {
    color: #ED5565!important;
}
.col-lg-offset-1 {
    margin-left: 6.333333%;
}




/*tabs teacher */
.nav-tabs { border-bottom: 2px solid #DDD; }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover { border-width: 0; }
    .nav-tabs > li > a { border: none; color: #666; }
        .nav-tabs > li.active > a, .nav-tabs > li > a:hover { border: none; color: #4285F4 !important; background: transparent; }
        .nav-tabs > li > a::after { content: ""; background: #4285F4; height: 2px; position: absolute; width: 100%; left: 0px; bottom: -1px; transition: all 250ms ease 0s; transform: scale(0); }
    .nav-tabs > li.active > a::after, .nav-tabs > li:hover > a::after { transform: scale(1); }
.tab-nav > li > a::after { background: #21527d none repeat scroll 0% 0%; color: #fff; }
.tab-pane { padding: 15px 0; }
.tab-content{padding:20px}

.card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3); margin-bottom: 30px; }

</style>
  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    
     <script src="<c:url value="/resources/js/player.js"/>"></script>
       <script src="<c:url value="/resources/js/student_home_page.js"/>"></script>
   
 </body></html>