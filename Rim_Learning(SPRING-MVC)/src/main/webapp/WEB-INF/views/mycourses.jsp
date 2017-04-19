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
     <link href="<c:url value="/resources/css/mycourses.css" />" rel="stylesheet">
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
  </head>

<div id="home">
<link href="<c:url value="/resources/css/mycourses.css" />" rel="stylesheet">
 <c:forEach var="i" items="${usertrainings}">
             
               <div class="col-sm-6">
						  <div class="col-item">
                                     <div class="photo"  >
                                     <!-- 
                                     onclick="player('/rim_learning_spring_mvc/resources/formations/formation-math/nombre-complexe/presentation/511344.mpd','/rim_learning_spring_mvc/resources/formations/formation-math/nombre-complexe/presentation/511344.m3u8','/rim_learning_spring_mvc/resources/formations/formation-math/nombre-complexe/presentation/card.png','players')
                                          <a href="<c:url value="/playlist #palylist" />" id="list" >
                                      -->
                                    
                               <a href="#" id="list" onclick="playlist('${i.idTraining}')"  >
                               
                               
                               <img src="<c:url value="${i.url_photo_poster}"/>" class="img-responsive" alt="a" />
                               
                               </a>
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-4">
                                        
                                            <h6  style="font-size: 19px;">
                                               ${i.name} </h6>
                                            
                                        </div>
                                        <div class="rating hidden-sm col-md-8">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details ">
                                            
                                   duree d'access
                                          
                                            </p>
                                            
                                    </div>
                                    
                                    <div class="clearfix">
                                    </div></div>
                                    
                                    
                                    
                                    	
                                    
                               
						
					</div><!-- end content -->
					
					
				</div><!-- end card and col -->
				
				
                        </c:forEach><!-- end foreach -->

     </div><!-- end row -->






    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript" src="https://bitmovin-a.akamaihd.net/bitmovin-player/stable/7/bitmovinplayer.js"></script>
      <script src="<c:url value="/resources/js/player.js"/>"></script>
     
      
      
<script type="text/javascript">


   
   	
 
    


</script>
 
 
  </body>
</html>