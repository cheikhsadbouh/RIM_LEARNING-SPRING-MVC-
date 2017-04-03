

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<jsp:include page='home.jsp'/>


<!-- Modal -->
<div id="login_error" class="modal fade" role="dialog">
 
        
<div class="form-wrap">
		<div class="tabs">
				<div class="modal-header" align="center">
					<img class="img-circle" id="img_logo" src="<c:url value="/resources/img/user.png"/>">
					
				</div>
		
		</div><!--.tabs-->

		<div class="tabs-content">
		<div class="alert alert-danger" align="center" role="alert"><h6>
		
		L'identifiant ou le mot de passe est incorrect
		
		
		</h6>
		</div>
			<div id="signup-tab-content" class="active">
				<form class="signup-form" action="<c:url value="/login"/>" method="POST"  onsubmit="return FormValidation_login_error();">

					<input type="text" class="input"  name="user" id="erroruser" autocomplete="off" placeholder="Nom d'utilisateur">
					<input type="password" class="input" name="pass" id="errorpass" autocomplete="off" placeholder="mot de passe">
	
		
		
		     
                <button  class="button btn">se connecter <i class="fa fa-sign-in fa-1x"></i></button>
            
					
					
					
					
					
				</form><!--.signup-form-->
			</div></div><!-- content end  -->
			
			</div><!-- form-wrap end -->
			</div><!-- end model login -->
 
 
      
     