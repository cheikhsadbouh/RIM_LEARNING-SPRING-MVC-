/**
 * 
 */



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
