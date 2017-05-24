<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="./resources/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div id="h">
  <jsp:include page="header.jsp"/>
</div>
<div id="b">
  <div id="cont" class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    
    <div class="carousel-inner">
      <div class="item active">
         <img class="mySlides" src="./resources/images/sld1.jpg" style="width:100% ;height:320px">
      </div>

      <div class="item">
         <img class="mySlides" src="./resources/images/sld2.jpg" style="width:100% ;height:320px">
      </div>
    
      
      <div class="item">
         <img class="mySlides" src="./resources/images/sld4.jpg" style="width:100% ;height:320px">
      </div>
      <div class="item">
         <img class="mySlides" src="./resources/images/sld5.jpg" style="width:100% ;height:320px">
      </div>
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>
<div id="c">
  <a href="ProductDetails"><img id="tv1" src="./resources/images/TV1.jpg"></a>

<img id="tv2" src="./resources/images/TV2.jpg">
  <img id="tv3" src="./resources/images/TV3.jpg">
  <img id="tv4" src="./resources/images/tv4.jpg">
  <img id="tv5" src="./resources/images/tv5.jpg">
  <img id="tv6" src="./resources/images/tv6.jpg">
  <img id="tv7" src="./resources/images/tv7.jpg">
  
  <img id="tv9" src="./resources/images/tv9.jpg">
  <img id="tv10" src="./resources/images/tv10.jpg">
  <img id="tv11" src="./resources/images/tv11.jpg">
  <img id="tv12" src="./resources/images/tv12.jpg">
  <img id="tv13" src="./resources/images/tv13.jpg">
  <img id="tv14" src="./resources/images/tv14.jpg">
  <img id="tv15" src="./resources/images/tv15.jpg">
</div>

<div id="f">
<jsp:include page="footer.jsp"/>
</div>



</body>
</html>
 