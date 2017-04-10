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
     <link href="<c:url value="/resources/css/mstyle.css" />" rel="stylesheet">
      <!-- myfont -->
     <link href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
  </head>
  <body>

 <ul id="menu" class="menu-side">
  <li>  <a href="<c:url value="/home #home" />" id="div1">home</a></li>
  <li>  <a href="<c:url value="/test7 #dvi2" />" id="div2">div2</a></li>
   
</ul>
<div id="target">



    </div>


    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
 
      <script type="text/javascript">
$(function() {
    var $menu = $('#menu'), 
        $target = $('#target');

    $menu.on('click', '> li > a', function(event) {
        var $this = $(this);
        event.preventDefault();
        $target.load($this.attr('href'));
        $('#result').load('ajax/test.html #container');
    });
});


</script>
     

 
 
  </body>
</html>