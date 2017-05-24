<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./resources/reg.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div id="h">
  <jsp:include page="header.jsp"/>
</div>

<div id="x">
<div id="logdiv">
<form action="">
  <div class="container">
  	<label><b>Name<span style="visibility:hidden">ccc</span></b></label>
    <input type="text" placeholder="Enter Name" name="Name" required><br>
    
    <label><b>Email<span style="visibility:hidden">ccc</span></b></label>
    
    <input type="text" placeholder="Enter Email" name="email" required><br>

  
 	<label><b><span style="visibility:hidden">c</span>City<span style="visibility:hidden">ccc</span> </b></label>
    
    <input type="text" placeholder="Enter City" name="city" required><br>
    <label><b>State<span style="visibility:hidden">ccc</span></b></label>
    
    <input type="text" placeholder="Enter State" name="state" required><br>
    
 	<label><b>Gender<span style="visibility:hidden">c</span> </b></label>
    <input type="radio" name="gender" value="male" checked> Male
  <input type="radio" name="gender" value="female"> Female<br><br>
   
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button"  class="cancelbtn">Cancel</button>
      
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
</div>
</div>



<div id="f">
<jsp:include page="footer.jsp"/>
</div>


</body>
</html>