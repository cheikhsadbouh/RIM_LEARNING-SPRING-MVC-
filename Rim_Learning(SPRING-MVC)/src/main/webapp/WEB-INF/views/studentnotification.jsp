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
  
  </head>
  <body>
   
   <div id="home">
   
    
     <c:forEach var="i" items="${notseen}">
    <a class="content" href="#">
      
       <div class="notification-item">
        <h4 class="item-title">  ${i.value}          </h4>
        <p class="item-info">   ${i.state}  </p>
         <script type="text/javascript">
        
           count();
          
           Notification.requestPermission().then(function(result){

        	   notify();
        	   });


        	     function notify() {
        	       var notification = new Notification('NOTIFICATION', {
        	         icon: "<c:url value='/resources/img/rimlearninglogo.png' />",
        	         body: "${i.value}",
        	         
        	       });
        	       var s="<audio autoplay='true'> <source src='<c:url value='/resources/sound_for_notification/notif.mp3' />'></audio>";
        	       $('body').append(s);

        	       notification.onclick = function () {
        	       //  window.open("");      
        	       };
        	       setTimeout(notification.close.bind(notification), 30000); 
        	     }
           
           
           
           
           
           
           
        </script>
      </div>
       
    </a>
   
  </c:forEach>
    
     <c:set var="count" value="1" scope="application" />
   <c:forEach var="rt" items="${seen}">
    <a class="content" href="#">
    
       <div class="notification-item">
        <h4 class="item-title">  ${rt.value}     <span id="showTime${count}"> </span>  </h4>
        <p class="item-info">   ${rt.state}  </p>
        
        <script type="text/javascript">
        
           //count();
            var date='${rt.datenotification}';
           var id='showTime${count}';
           showDiff(date,id);  
        </script>
      </div>
       <c:set var="count" value="${count+1}" scope="application" />
       
    </a>
  </c:forEach>
   
   </div>
   
    
 


  
  
  
  
  
  
  
  
  
  </body>
  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
     <script src="<c:url value="/resources/js/notification.js"/>"></script>
  
       