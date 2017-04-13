



function myFunc(R,Y){
  
	  document.getElementById(R).value=localStorage.username;
	  document.getElementById(Y).value=localStorage.pr;
}

function player(X,Y,Z,U){

	 if (location.protocol === "file:") {
		    document.getElementById("webserver-warning").style.display = "block";
		  }
	
	
	 	  var conf = {
		    key:       "91941868-f5a0-4c8d-ad12-b270b60ce8dd",
		    source: {
		      dash:        X,
		      hls:         Y,
		      poster:      Z
		     
		    }
		  };
		  var player = bitmovin.player(U);

		  player.setup(conf).then(function(value) {
		    // Success
		    console.log("Successfully created bitmovin player instance");
		  }, function(reason) {
		    // Error!
		    console.log("Error while creating bitmovin player instance");
		  });
	

}
