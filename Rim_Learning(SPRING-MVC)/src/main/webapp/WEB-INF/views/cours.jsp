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
     <link href="<c:url value="/resources/css/cours.css" />" rel="stylesheet">
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
      <!-- bitdash player -->
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
  
  </head>
  <body>
  
 <div id="cours">
      <link href="<c:url value="/resources/css/cours.css" />" rel="stylesheet">
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
                        <div class="col-sm-6">
						  <div class="col-item">
                                <div class="photo">
                                    <img src="<c:url value="/resources/img/card.png" />" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-4">
                                            <h5>
                                                nom de formation</h5>
                                            <h5 class="price-text-color">
                                                1000 UM</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-8">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add ">
                                           <a href="#" class="hidden-sm btn btn-default" data-toggle="modal" data-target="#myModal"> <i class="fa fa-shopping-cart"></i>abonner
                                           </a></p>
                                        <p class="btn-details ">
                                            <a href="#" class="hidden-sm  btn btn-default " data-toggle="modal" data-target="#details"><i class="fa fa-list"></i>Plus de détails
                                            </a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div></div>
                                    
                                    
                                    
                                    	
                                    
                               
						
					</div><!-- end content -->
				</div>
                        
                        <!-- end card1 -->
                        
                          <div class="col-sm-6">
						  <div class="col-item">
                                <div class="photo">
                                    <img src="<c:url value="/resources/img/card.png" />" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-4">
                                            <h5>
                                                nom de formation</h5>
                                            <h5 class="price-text-color">
                                                1000 UM</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-8">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add ">
                                           <a href="#" class="hidden-sm btn btn-default  "> <i class="fa fa-shopping-cart"></i>abonner
                                           </a></p>
                                        <p class="btn-details ">
                                            <a href="#" class="hidden-sm btn btn-default "><i class="fa fa-list"></i>Plus de détails
                                            </a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div></div>
                                    
                                    
                                    
                                    	
                                    
                               
						
					</div><!-- end content -->
				</div>
                       <!-- end card2 -->
                        
                        
                        </div><!-- end cours c -->
                        <div class="tab-pane fade" id="tab2success">cours D</div>
                        <div class="tab-pane fade" id="tab3success">cours A</div>
                        <div class="tab-pane fade" id="tab4success">cours O</div>
                      
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
        
        
          
  <!-- model abonner -->
  <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- model delaits -->

<div id="details" class="modal fade" role="dialog">
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
    <!--    <video width="400" controls poster="<c:url value="/resources/img/postervideo.jpg" />">
  <source src="<c:url value="/resources/img/rt.mp4" />" type="video/mp4">
  
</video>-->
    <div class="player-wrapper">
      <div id="player"></div>
    </div>

<script type="text/javascript">
  if (location.protocol === "file:") {
    document.getElementById("webserver-warning").style.display = "block";
  }

  var conf = {
    key:       "91941868-f5a0-4c8d-ad12-b270b60ce8dd",
    source: {
      dash:        "<c:url value='/resources/formations/formation-math/nombre-complexe/video1/511344.mpd' />",
      hls:         " <c:url value='/resources/formations/formation-math/nombre-complexe/video1/511344.m3u8' />",
      poster:      "<c:url value='/resources/formations/formation-math/nombre-complexe/' />"
     
    }
  };
  var player = bitmovin.player("player");

  player.setup(conf).then(function(value) {
    // Success
    console.log("Successfully created bitmovin player instance");
  }, function(reason) {
    // Error!
    console.log("Error while creating bitmovin player instance");
  });
</script>
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
                  <li class="list-group-item">
                  
  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <i class="fa fa-play-circle fa-2x"></i>
     </div>
     <div class="media-body"> 
     <span class="h4">titre de video </span> 
    
      
     <span class="pull-right"><i class="fa fa-lock fa-2x" aria-hidden="true"></i></span>

     </div>
     </div> <!-- titre video -->
                  
                  
                  
                  </li>
                  <li class="list-group-item">
                  
                  
                  <div class="media inner-all no-margin">
     <div class="pull-left"> 
     <i class="fa fa-play-circle fa-2x"></i>
     </div>
     <div class="media-body"> 
     <span class="h4">titre de video </span> 
    
      
     <span class="pull-right"><i class="fa fa-lock fa-2x" aria-hidden="true"></i></span>

     </div>
     </div> <!-- titre video -->
                  
                  
                  
                  </li>
                 
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

 
		</div><!-- end id cours -->
  
  


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
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

 
  </body>
</html>