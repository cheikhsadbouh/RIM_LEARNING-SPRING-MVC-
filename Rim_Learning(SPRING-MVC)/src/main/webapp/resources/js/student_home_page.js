/**
 * 
 */
//add icon
function addicon(){
	


	/* $('#op').css('visibility', 'visible');
	 $('#ops').css('visibility', 'visible');*/
}


//create input dynamic 
var inc = 1;
function createinput(){


	if(inc==1){
	$("#walls").append(' <div id="cont" class="well" style="     min-height: 32px; max-height: 39px;overflow: auto;"></div>');
	}
	$("#cont").append('<input  required class="form-control input" name="ds'+inc+'" id="input" placeholder=" type option"  type="text">');

	
	inc= inc + 1;
	
}
//post
  function posts(){
    		 var postActions   = $( '#list_PostActions' );
    		    var currentAction = $( '#list_PostActions li.active' );
    		    if ( currentAction.length === 0 ) {
    		        postActions.find( 'li:first' ).addClass( 'active' );
    		    }
    		    postActions.find( 'li' ).on( 'click', function( e ) {
    		        e.preventDefault();
    		        var self = $( this );
    		        if ( self === currentAction ) {return;}
    		        // else
    		        currentAction.removeClass( 'active' );
    		        self.addClass( 'active' );
    		        currentAction = self;
    		    });
    		    
    		 }
    	 



//playlist


function playlist(X){
	
	
	//alert("trainig id is :"+X);
	 $target = $('#target');
	     //  preventDefault();
	       $target.load("/rim_learning_spring_mvc/playlist/"+X+" #palylist", function(){ 
	    	   
	    	   	$("#aa1").click(function() {
		       	   // alert("clicked:" + this.id);
		       	});

		       $("#aa1").trigger("click");  
	    	   
	       });
	       
	       

	    
	    		
			   
	    		  
	       	//alert("player-wrapper is here");
	       	
	    
	        
	 
	      
	       
	       
	       
	       
}






//submit form payment 

 




    
//validation payment form 







function FormValidation_payment(){
	var user_phone =document.getElementById('phone');
	
	if(user_phone.value ==''){
		user_phone.style.borderColor="rgba(234, 0, 0, 0.81)";
		//user_phone.style.boxShadow = "10px 20px 30px blue";
		user_phone.focus();
	         return false;
	}
	else{
		
	//	document.forms["payment"].submit();
	//	$('#response').modal('show');
		
		return true;
	}
}




////
 

$(document).on('click', '.panel-heading span.clickable', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('click', '.panel div.clickable', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).ready(function () {
    $('.panel-heading span.clickable').click();
    $('.panel div.clickable').click();
});






    

      

    	

    	  
    	  
    	  
function getSubList(X,formw) {
    		  $('#'+formw).submit(function(event) {
    		    event.preventDefault(); // Prevent the form from submitting via the browser
    		    var form = $(this);
    		    $.ajax({
    		      type: 'POST',
    		      url: '/rim_learning_spring_mvc/trainingrequest',
    		      data: form.serialize()
    		    }).done(function(data) {
    		      // Optionally alert the user of success here...
    		    	
    		    	$('#'+X).modal('hide')
    		    	$('#response').modal('show');
    		    }).fail(function(data) {
    		      // Optionally alert the user of an error here...
    		    	
    		    });
    		  });
    	  }


//post validation 
function postvalid(){
	b=true;
	
	var area =document.getElementById('area');
	
	if(area.value.trim()==""){
		//alert("is empty");
		area.style.borderColor="rgba(234, 0, 0, 0.81)";
		area.focus();
	         return false;
	}else if(inc !=1){
	
		for( r=1; r<=inc;r++){
			var elm =$('[name="ds'+r+'"]');
			
			if(elm.val() =='')
			{
				
			
				
				
				
			       b=false;
			       
			         return false ;
			}else{
				
			}
			
			
			
			
		}
		
		//alert("b :"+b+"area : "+area.value);
	}
	if(area.lenght!=0 && b!= false ){
		sendpost();
		 return true ;
		
	}
	
	
}



function togglebtn(){
	
	if($('#paymentbtn').attr('value')=="Off"){
		
		$('#paymentbtn').val('On');
	}else{
		$('#paymentbtn').val('Off');
		
	}
		
	
	
}

function sendpost(){
	
	if(inc!=1){
		
		
		//alert("post vote ");
		   // var form = $(this);
		var DATA={};
		var area =document.getElementById('area');
		DATA["rt"]=area.value+"msg";
		for( r=1; r<inc;r++){
			var elm =$('[name="ds'+r+'"]');
			DATA["rt"]=DATA["rt"]+elm.val()+"input" ;
			
		}
		alert("DATA"+DATA);
		
		
		   $.ajax({
			      type: 'POST',
			      url: '/rim_learning_spring_mvc/teacher_post/'+DATA["rt"]+'/'+localStorage.username,
			      data: DATA
			    }).done(function(data) {
			      // Optionally alert the user of success here...
			    	
			   // alert("data send  : "+data+"id :"+localStorage.username);
			    }).fail(function(data) {
			      // Optionally alert the user of an error here...
			    	// alert(" can't  send  data  : "+data+"id :"+localStorage.username);
			    });
		
		
		
		
		
		
		
		
		
		
	}//end post vote
	else if($('#paymentbtn').attr('value')!="Off"){
		
		//alert("is payment post ");
		var DATA={};
		var area =document.getElementById('area');
		DATA["rt"]=area.value+"msg";
		var  py = $('#paymentbtn').attr('value');
		 alert("btn :"+py);
		 DATA["rt"]=DATA["rt"]+py+"payment";
		 $.ajax({
		      type: 'POST',
		      url: '/rim_learning_spring_mvc/teacher_post/'+DATA["rt"]+'/'+localStorage.username,
		      data: DATA
		    }).done(function(data) {
		      // Optionally alert the user of success here...
		    	
		    //alert("data send  : "+data+"id :"+localStorage.username);
		    }).fail(function(data) {
		      // Optionally alert the user of an error here...
		    	// alert(" can't  send  data  : "+data+"id :"+localStorage.username);
		    });
		
		//end payment post
	}
	else{
		
		//alert("is simple post");
		
		var DATA={};
		var area =document.getElementById('area');
		DATA["rt"]=area.value+"msg";
		
		 $.ajax({
		      type: 'POST',
		      url: '/rim_learning_spring_mvc/teacher_post/'+DATA["rt"]+'/'+localStorage.username,
		      data: DATA
		    }).done(function(data) {
		      // Optionally alert the user of success here...
		    	
		   // alert("data send  : "+data+"id :"+localStorage.username);
		    }).fail(function(data) {
		      // Optionally alert the user of an error here...
		    	// alert(" can't  send  data  : "+data+"id :"+localStorage.username);
		    });
		
		
		
		// end simple post
	}
	
	
	
	
}






$.getScript('//cdn.jsdelivr.net/isotope/1.5.25/jquery.isotope.min.js',function(){

	  /* activate jquery isotope */
	  $('#posts').imagesLoaded( function(){
	    $('#posts').isotope({
	      itemSelector : '.item'
	    });
	  });
	  
	});