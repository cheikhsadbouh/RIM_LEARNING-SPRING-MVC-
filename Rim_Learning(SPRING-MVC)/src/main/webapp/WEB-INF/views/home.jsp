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
           <span style="color:#71c9c6;">  <b>Rim</b> Learning </span>
      <!--   <img src="<c:url value="/resources/img/rimlearninglogo.png" />">-->
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
                    
                   
                  
                  
                   <li data-toggle="modal" data-target="#myModal">
                   <a href="#">
                   <span class="glyphicon glyphicon-user" ></span> s'inscrire</a>
                   </li>
      <li  data-toggle="modal" data-target="#login_model">
      <a href="#"><span class="glyphicon glyphicon-log-in"></span> se connecter</a>
      </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
  
  
   <div id="home">

 

<header class="business-header" >
 
       <div class="d">
       <div class="col-xs-12">
        <img class="img-responsive" src="<c:url value="/resources/img/rimlearninglogo.png" />">
         
        </div>
       <div class="gretting">
     
   <div class="col-xs-12">
     <h1>commencez à apprendre avec <span style="color:#71c9c6;">RIM LEARNING</span></h1>
      
     <hr class="small">
     <div class="row" style="margin-left: 77px;">
    
    
     
     <div class="col-xs-4"><i class="fa fa-graduation-cap"style="color:#71c9c6;" ></i>
     <span> Plus de 12 professeurs </span>
     
     </div>
     
     
     
     
     
     <div class="col-xs-4"><i class="fa fa-book" style="color:#71c9c6;" ></i>
     <span >Plus de 2000 cours</span>     
     </div>
      
     <div class="col-xs-4"><i class="fa fa-paper-plane" style="color:#71c9c6;" ></i>
     <span>Apprendre en ligne</span>
     
     </div>
    
     
     
     </div>
  </div>
  </div>
  
 
</div>
      

    </header> <!-- end head -->
  
   
   <div class="sec">
           <div class="col-xs-12 col-md-4  text-center">
              <i class="fa fa-trophy fa-3x circle-icon" style="color:#71c9c6;"></i>
                <h3 style="color:#fff;">
                  Les Meilleurs professeurs
                </h3>
                <p style="color:#fff;">nous offrons à nos étudiants les meilleurs professeurs pour obtenir  le bac</p>
            </div>
             <div class="col-xs-12 col-md-4   text-center">
              <i class="fa fa-desktop fa-3x circle-icon" style="color:#71c9c6;"></i>
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
 
 
 
 
 
 
 <!--  begin  model for signup -->

 
 <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
 
        
<div class="form-wrap">
		<div class="tabs">
			<h3 class="signup-tab-student"><a class="active btn" href="#signup-tab-content">etudiant</a></h3>
			<h3 class="signup-tab-teacher"><a  class="btn" href="#signup2-tab-content"> professeur</a></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form class="signup-form" action="<c:url value="/student"/>" method="post"  onsubmit="return FormValidation_student();">
				    <input type="text" class="input"  name="firstName"id="user_firstname" autocomplete="off" placeholder="nom">
					<input type="text" class="input"  name="lastName"  id="user_lastname" autocomplete="off" placeholder="Prénom">
					<input type="email" class="input" name="email" id="user_email" autocomplete="off" placeholder="Email">
					<input type="text" class="input"  name="username" id="user_name" autocomplete="off" placeholder="Nom d'utilisateur">
					<input type="password" class="input" name="password" id="user_pass" autocomplete="off" placeholder="mot de passe">
	
	<div class="control-group">
	
	<label class="control control--radio">section C
		<input type="radio" name="section"  value="section_C" checked="checked"/>
		<div class="control__indicator"></div>
	</label>
	<label class="control control--radio">section D
		<input type="radio" name="section" value="section_D"/>
		<div class="control__indicator"></div>
	</label>
	<label class="control control--radio" >section A
		<input type="radio" name="section"  value="section_A"/>
		<div class="control__indicator"></div>
	</label>
	<label class="control control--radio" >section O
		<input type="radio" name="section" value="section_O"/>
		<div class="control__indicator"></div>
	</label>
	
</div>
    
     
    

					
					<input type="submit" class="button" value="s'inscrire">
					
				</form><!--.signup-form-->
			
			</div><!--.signup-tab-content-->

			<div id="signup2-tab-content">
				<form class="login-form" action="<c:url value="/teacher"/>" method="post"  onsubmit="return FormValidation_teacher();">
				     <input type="text" class="input" name="firstName" id="firstname" autocomplete="off" placeholder="nom">
					 <input type="text" class="input"  name="lastName" id="lastname" autocomplete="off" placeholder="Prénom">
				     <input type="email" class="input" name="email" id="email" autocomplete="off" placeholder="Email">
			         <input type="tel" class="input"  name="poneNumber" id="user_tel" autocomplete="off" placeholder="numéro de téléphone">
			
			      
						 <div class="form-group">
						  <select class="form-control" id="list" name="item">
						  
						    <option value="select">sélectionner une matière</option>
						    <option  value="mathématique"> mathématique</option>
						    <option  value="science">science</option>
						    <option   value="physique">physique</option>
						    <option   value="arabe">arabe</option>
						    <option   value="français">français</option>
						    <option  value="Anglais">Anglais</option>
						  </select>
						</div>
					
					<div class="control-group">
	
	<label class="control control--checkbox">section_C
		<!-- <input type="checkbox" checked="checked"/> -->
		<input type="radio" name="section"  value="section C" checked="checked"/>
		<div class="control__indicator"></div>
	</label>
	<label class="control control--checkbox">section_D
		<input type="radio" name="section"  value="section D"/>
		<div class="control__indicator"></div>
	</label>
	<label class="control control--checkbox">section_A
		<input type="radio" name="section"  value="section A"/>
		<div class="control__indicator"></div>
	</label>
	<label class="control control--checkbox">section_O
		<input type="radio" name="section"  value="section O"/>
		<div class="control__indicator"></div>
	</label>
	
	
</div>
					
					
	              <input type="submit" class="button" value="s'inscrire">
				</form><!--.signup-form-->
				
			</div><!--.signup-tab-content-->
		</div><!--.tabs-content-->
	</div><!--.form-wrap-->
 
 
 </div>
 <!-- end model signup -->
 
 
 
 
 
 
 
 
 
  <!-- login section  -->
       <!--  begin  model for login -->
 
 
 <!-- Modal -->
<div id="login_model" class="modal fade" role="dialog">
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" align="center">
					<img class="img-circle" id="img_logo" src="<c:url value="/resources/img/user.png"/>">
					
				</div>
		
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form class="signup-form" action="<c:url value="/login"/>" method="POST"  onsubmit="return FormValidation_login();">
				 
					<input type="text" class="input"  name="user" id="loginname" autocomplete="off" placeholder="Nom d'utilisateur">
					<input type="password" class="input" name="pass" id="loginpass" autocomplete="off" placeholder="mot de passe">
	
		
		
		     
                <button  class="button btn">se connecter <i class="fa fa-sign-in fa-1x"></i></button>
            
					
					
					
					
					
				</form><!--.signup-form-->
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			</div><!-- end model login -->
 
 
 
 
 
 
 
 
 </div>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <!-- footer -->
 
 
 
<p class="footer">Copyright &copy;   <span style="color:#71c9c6;">  <b>Rim Learning</b> </span>2017</p>
                      <hr class="small" >
   




 



      <link href="<c:url value="/resources/css/signup.css" />" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
 
      
       <script src="<c:url value="/resources/js/signup.js"/>"></script>
       
       <script src="<c:url value="/resources/js/login.js"/>"></script>
      
      
       <script type="text/javascript">
 Notification.requestPermission().then(function(result){
notify();
});
  function notify() {
    var notification = new Notification('welecome in Rim-Learning!', {
      icon: '<c:url value="/resources/img/rimlearninglogo.png" />',
      body: "welecome in Rim-Learning!",
      sound: '',
 
    });
   
    var s="<audio autoplay='true'> <source src='<c:url value='/resources/sound_for_notification/notif.mp3' />'></audio>";
    $('body').append(s);
    notification.onclick = function () {
      window.open("http://carnes.cc");      
    };
    setTimeout(notification.close.bind(notification), 7000); 
  }
 </script>

 

  </body>
</html>