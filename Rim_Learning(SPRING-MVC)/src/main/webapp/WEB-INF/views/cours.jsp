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
  
 <div id="cours">
 
 
      <link href="<c:url value="/resources/css/cours.css" />" rel="stylesheet">
       
     <script src="<c:url value="/resources/js/player.js"/>"></script>
      
 	<div class="col-md-12">
            <div class="panel with-nav-tabs panel-success" id="borderheader">
                <div class="panel-heading" id="header">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1success" data-toggle="tab">Section <img src="<c:url value="/resources/img/cc.png" />" class="img-responsive" alt="a" /></a></li>
                            <li><a href="#tab2success" data-toggle="tab">Section <img src="<c:url value="/resources/img/DD.png" />" class="img-responsive" alt="a" /></a></li>
                            <li><a href="#tab3success" data-toggle="tab">Section <img src="<c:url value="/resources/img/AA.png" />" class="img-responsive" alt="a" /></a></li>
                            <li>
                                <a href="#tab4success" data-toggle="tab">Section <img src="<c:url value="/resources/img/oo.png" />" class="img-responsive" alt="a" /> </a>
                                
                            </li>
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1success">
                        
                        
                        <c:forEach var="i" items="${list}">
                          

                        
                        <div class="col-sm-6">
						  <div class="col-item">
                                <div class="photo">
                                    <img src="<c:url value="${i.url_photo_poster}" />" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-4">
                                            <h5>
                                               <c:out value="${i.name}"/></h5>
                                            <h5 class="price-text-color">
                                               <c:out value="${i.price} UM"/> </h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-8">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add ">
                                           <a href="#" onclick="myFunc('<c:out value='${i.name}u'/>','<c:out value="${i.name}p"/>')" class="hidden-sm btn btn-default" data-toggle="modal" data-target="<c:out value="#${i.name}rt"/>"> <i class="fa fa-shopping-cart"></i>abonner
                                           </a></p>
                                        <p class="btn-details ">
                                          <c:forEach var="t" items="${i.video}">  
                                        <c:if test = "${t.title eq 'presentation '}">
                                            <a href="#" class="hidden-sm  btn btn-default " data-toggle="modal" data-target="<c:out value="#${i.name}y"/>"
                                             onclick="player('${pageContext.request.contextPath}<c:out value="${t.dashUrl}"/>','${pageContext.request.contextPath}<c:out value="${t.hlsUrl}"/>','${pageContext.request.contextPath}<c:out value="${t.url_photo_poster}"/>','<c:out value="${i.name}player"/>')">
                                             <i class="fa fa-list"></i>Plus de détails
                                            </a>
                                         </c:if>
                                          </c:forEach>
                                            </p>
                                            
                                    </div>
                                    
                                    <div class="clearfix">
                                    </div></div>
                                    
                                    
                                    
                                    	
                                    
                               
						
					</div><!-- end content -->
					
					
				</div><!-- end card and col -->

        
				
				
                        </c:forEach><!-- end foreach -->
                        
                        
                        </div><!-- end cours c -->
                        <div class="tab-pane fade" id="tab2success">cours D</div>
                        <div class="tab-pane fade" id="tab3success">cours A</div>
                        <div class="tab-pane fade" id="tab4success">cours O</div>
                      
                    </div>
                </div>
            </div>
        </div>
        
        
                
  <c:forEach var="i" items="${list}">
        
        				<!-- model abonner -->
  <!-- Modal -->



<div id="<c:out value="${i.name}rt"/>" class="modal fade" >
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" >
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div id="data" align="center">  
     <p>formation : <c:out value="${i.name}"/></p>
       <p> prix : <c:out value="${i.price} UM"/></p>
          <p>période d'accès: 1 mois </p>
     
     </div>
					
				</div>
		
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form class="signup-form"    id="<c:out value="${i.name}34"/>"  >
				 
				 
<input type="text" class="input"  name="phone_user" id="phone" autocomplete="off"required title="Lütfen işaretli yerleri doldurunuz " placeholder="numéro de téléphone">


                  
<input id="" type="hidden" class="form-control" name="TRAININGID" value="<c:out value="${i.idTraining}"/>"    >   
<input id="" type="hidden" class="form-control" name="PRICE" value="<c:out value="${i.price}"/>" >   
<input id="<c:out value="${i.name}u"/>" type="hidden" class="form-control" name="USER" value=""> 
<input id="<c:out value="${i.name}p"/>" type="hidden" class="form-control" name="PRIMARY" value=""> 
		     
  <button  id="ibutton" type="submit" class="button btn"  onclick="getSubList('<c:out value="${i.name}rt"/>','<c:out value="${i.name}34"/>')">
  Envoyer la demande <i class="fa fa-sign-in fa-1x"></i></button>
            
					
					
					
					
					
				</form><!--.signup-form-->
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			
			</div><!-- end model login -->
 
 
     

<!-- model delaits -->

<div id="<c:out value="${i.name}y"/>" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">détails</h4>
      </div>
      <div class="modal-body">
      <div class="row">
      <div class="clo-xs-4">
      <h4 class="text-center">
	Présentation de la formation</h4>
   
    <div class="player-wrapper">
      <div id="<c:out value="${i.name}player"/>"></div>
    </div>


      </div>
      
      <div class="clo-xs-4">
               <div class="panel  panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Programme d'études pour ce cours</h3>
                    <span class="pull-right clickable"><i class="glyphicon glyphicon-minus"></i></span>
                </div>
                <div class="panel-body" id="padingbody">
                 <div class="well" style="max-height: 100px;overflow: auto;">
                <ul class="list-group checked-list-box">   
                 <c:forEach var="t" items="${i.video}">   
                  <li class="list-group-item">
                  
  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <i class="fa fa-play-circle fa-2x"></i>
     </div>
     <div class="media-body"> 
     <span class="h4"><c:out value="${t.title}"/> </span> 
    
      
     <span class="pull-right"><i class="fa fa-lock fa-2x" aria-hidden="true"></i></span>

     </div>
     </div> <!-- titre video -->
                    </li>
                  </c:forEach><!-- end foreach -->
                </ul>
                </div>
                
                </div>
            </div><!-- groups anglais -->
      </div>
      
      <div class="clo-xs-4">
     
   <h4 class="text-center">  À propos de l'instructeur</h4>
                <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <img src="<c:url value="/resources/img/group.png" />" alt="..." class="img-post2">
     </div>
     <div class="media-body"> 
     <a href="#" class="h4">nom professeur </a> 
      <br>
     <em class="text-xs text-muted">détails sur le professeur</em> 
      
     
     </div>
     </div>
     
     
      </div>
      
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
     
    </div>
 
  </div>
</div>
        
  
                        </c:forEach><!-- end foreach -->

 
 
 
 
 <div id="response" class="modal fade" >
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" >
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					
					
				</div>
		
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				 
		     
  
	<div id="data3">  
	<br>
    
  <p align="left"> 
       Merci pour votre fidélité,
       </p>
       
 <p align="center" >
Vous avez 24 heures pour envoyer du crédit à notre numéro
 <i class="glyphicon glyphicon-earphone"  style="color:#71c9c6;"></i><b style="color:#71c9c6;"> 36408642</b>
</p>
 <div id="color">
   <p align="left">NB :  </p>
La demande sera rejetée après cette période
       
 
 </div>
  
     
     </div>
  
					
					
					
					
				
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			
			</div><!-- end model login -->
		</div><!-- end id cours -->
  
  


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    
     <script src="<c:url value="/resources/js/player.js"/>"></script>
       <script src="<c:url value="/resources/js/student_home_page.js"/>"></script>
   
 
     

   <style type="text/css">
video {
    width: 100%;
    height: auto;
    margin-top: -64px;
}

  .bmpui-ui-watermark{
  display: none;
}
</style>

<script type="text/javascript">



</script>

 
  </body>
</html>