<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

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
     <link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet">
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
  </head>
  <body>



 <!-- Navigation -->
    <nav class="navbar navbar-default  navbar-fixed-top ">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
            <span style="color:#61bd5e;">  <b>Rim</b> Learning </span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.html"><span class="glyphicon glyphicon-home"></span> Page d'accueil</a>
                    </li>
                    <li>
                      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">cours
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">section D</a></li>
          <li><a href="#">section A</a></li>
          <li><a href="#">section C</a></li>
          <li><a href="#">section O</a></li>
        </ul>
         </li>
                    
                   
                  
                  
                   <li>
                   <a href="#">
                   <span class="glyphicon glyphicon-user"></span> s'inscrire</a>
                   </li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> se connecter</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
  
  
   



<header class="business-header">
 
       <div class="d">
       <div class="col-xs-12">
        <img class="img-responsive" src="<c:url value="/resources/img/rimlearning2.ico"/>">
         
        </div>
       <div class="gretting">
     
   <div class="col-xs-12">
     <h1>commencez à apprendre avec <span style="color:#61bd5e;">RIM LEARNING</span></h1>
      
     <hr class="small">
     <div class="row">
    
    
     
     <div class="col-xs-4"><i class="fa fa-graduation-cap" ></i>
     <span> Plus de 12 professeurs </span>
     
     </div>
     
     
     
     
     
     <div class="col-xs-4"><i class="fa fa-book" ></i>
     <span >Plus de 2000 cours</span>     
     </div>
      
     <div class="col-xs-4"><i class="fa fa-paper-plane" ></i>
     <span>Apprendre en ligne</span>
     
     </div>
    
     
     
     </div>
  </div>
  </div>
  
 
</div>
      

    </header> <!-- end head -->
  
   
   <div class="sec">
           <div class="col-xs-12 col-md-4  text-center">
              <i class="fa fa-trophy fa-3x circle-icon"></i>
                <h3 style="color:#fff;">
                  Les Meilleurs professeurs
                </h3>
                <p style="color:#fff;">nous offrons à nos étudiants les meilleurs professeurs pour obtenir  le bac</p>
            </div>
             <div class="col-xs-12 col-md-4   text-center">
              <i class="fa fa-desktop fa-3x circle-icon"></i>
                <h3 style="color:#fff;">Apprendre en ligne
                </h3>
                <p style="color:#fff;"> Nos professeurs vous offre les meilleurs cours en ligne</p>
            </div>
             <div class="col-xs-12 col-md-4   text-center">
               <img class="img-circle img-responsive img-center" src=" <c:url value="/resources/img/images-book-1.png"/>" alt="">
              
         
                </div>   
   

</div><!-- end section -->
 
 
 <div class="jumbotron">

 <h1 class="he">Nos services</h1>
  <hr class="small" >


 
        <div class="featurette" id="about">
            <img class="featurette-image img-circle img-responsive pull-right" src="<c:url value="/resources/img/b.png"/>">
            <h2 class="featurette-heading">cours plus travaux dirigés
                
            </h2>
            <p class="lead"> Écrire quelque chose à propos  de ce service </p>
        </div>

        <hr class="featurette-divider">

        <!-- Second Featurette -->
        <div class="featurette" id="services">
            <img class="featurette-image img-circle img-responsive pull-left" src="<c:url value="/resources/img/se.png"/>">
            <h2 class="featurette-heading">La visioconférence </h2>
             <p class="lead"> Écrire quelque chose à propos  de ce service </p>
        </div>

        <hr class="featurette-divider">

        <!-- Third Featurette -->
        <div class="featurette" id="contact">
            <img class="featurette-image img-circle img-responsive pull-right" src="<c:url value="/resources/img/c.png"/>">
            <h2 class="featurette-heading">La Conférence</h2>
                 <p class="lead"> Écrire quelque chose à propos  de ce service</p>
        </div>
         <hr class="featurette-divider">
           <!-- fourth Featurette -->
        <div class="featurette" id="contact">
            <img class="featurette-image img-circle img-responsive pull-left" src="<c:url value="/resources/img/img6.png"/>">
            <h2 class="featurette-heading">Discuter avec votre professeur
               
                 <p class="lead"> Écrire quelque chose à propos  de ce service</p>
            </h2>

        </div>
      
 

  <hr class="featurette-divider">
 <div class="featurette" id="contact">

<h1 class="he">Contactez nous</h1>
 <hr class="small" >
<form class="cf">
  <div class="half left cf">
    <input type="text" id="input-name" placeholder="Name">
    <input type="email" id="input-email" placeholder="Email address">
    <input type="text" id="input-subject" placeholder="Subject">
  </div>
  <div class="half right cf">
    <textarea name="message" type="text" id="input-message" placeholder="Message"></textarea>
  </div>  
  <input type="submit" value="Submit" id="input-submit">
</form>



</div><!-- aboutus -->
 </div><!-- end our services -->
 
 
 <!-- footer -->
 
 
 

    
          <p class="footer">Copyright &copy;   <span style="color:#61bd5e;">  <b>Rim Learning</b> </span>2017</p>
                      <hr class="small" >
   











    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery.js"/>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  </body>
</html>