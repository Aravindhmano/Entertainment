<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@page import=" com.niit.entertainment_backend.model.Categorymodel" %>
<%@page import="com.niit.entertainment_backend.model.Suppliermodel" %> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- dialog -->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" />
  <!-- dialog -->
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
   /*  .navbar {
      margin-bottom: 0;
      border-radius: 0;
    } */
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      height:200px;
  }
  
 

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  
/*  form {
    border: 3px solid #f1f1f1;
} */

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline;
    border: 1px solid #ccc;
    
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
} */


.container {
    width:500px;
	height:350px;
    }

/* span.psw {
    float: right;
    padding-top: 16px;
} */

/* Change styles for span and cancel button on extra small screens */
/* @media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
} */

#addcat
{
 position: relative;
        left:500px;
        display:none;
width:500px;
height:700px;
/* display:none; */
}

#addsup
{

 position: relative;
        left:500px;
        display:none;
width:500px;
height:700px;
/* display:none; */
}
#addpro
{

 position: relative;
        left:500px;
        display:none;
width:500px;
height:700px;

/* display:none; */
}

#pan
{
position:absolute;
top:52px;
left:0px;
display:inline; 
width:300px;
heigth:400px;
padding: 200px 150px;
background:#A8A8A8;
}
#chead
{
color:black;
position:absolute;
top:20px;
left:0px;
text-decoration:underline;
}
#shead
{
color:black;
position:absolute;
top:130px;
left:0px;
text-decoration:underline;
}
#phead
{
color:black;
position:absolute;
top:220px;
left:0px;
text-decoration:underline;
}

#cbuttonadd
{
position:absolute;
top:80px;
left:0px;
}

#sbuttonadd
{
position:absolute;
top:185px;
left:0px;
}

#pbuttonadd
{
position:absolute;
top:280px;
left:0px;
}

#dialog
{

width:400px;
heigth:400px;
}

/* #cbuttonclose
{
position:absolute;
top:140px;
left:0px;
} */
</style>
<script type="text/javascript">
$(document).ready(function() {
   /*  $("#addcat").hide();
    $("#addsup").hide();
    $("#addpro").hide(); */

    $("#cbuttonadd").click(function() {
    	  $("#addcat").show();
    	    $("#addsup").hide();
    	    $("#addpro").hide();
    	    
    });
    
    $("#sbuttonadd").click(function() {
  	  $("#addcat").hide();
  	    $("#addsup").show();
  	    $("#addpro").hide();
  });
    
    $("#pbuttonadd").click(function() {
  	  $("#addcat").hide();
  	    $("#addsup").hide();
  	    $("#addpro").show();
  });
    

});

</script>

<!--script for alert  -->




<!--  -->
  
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href=" "><img src="./resources/images/logo.png" style="width:75px;height:50px;position:relative;top:-15px;left:0px;"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href=" ">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      
    </div>
  </div>
</nav>

<div id="dialog">
  <p>data stored.</p>
</div>

<div id="pan">
<h1 id="chead">Category</h1>
<button id="cbuttonadd"> Add</button>
<br>
<br>

<h1 id="shead">Supplier</h1>
<button id="sbuttonadd"> Add</button>

<br>
<br>

<h1 id="phead">Product</h1>
<button id="pbuttonadd"> Add</button>

</div>

<script type="text/javascript">
function stay()
{
	
	var retVal = confirm("Do you want to continue ?");
    if( retVal == true ){
    	window.location.href = "/";
       return true;
    }
    else{
    	window.location.href = "/adding";
       return false;
    }
	
/* 	alert("data inserted!"); */

   /*  $(document).ready(function () {
        $("#dialog").dialog({
            modal: true,
            autoOpen: false,
            title: "Alert box",
            width: 400,
            height: 150,
            
        });
       ($("#myform").submit(function () {
        	 
            $('#dialog').dialog('open');
            
            
                    
           
        },6000));
    }); 
 */
 
 }
</script>

<div id="addcat">
<form id="myform"  action="category">
<h2>Add Category</h2>
<div class="container">
    <label><b>Category Id</b></label>
    <input type="text" name="cId" value=""  style="width:350px;display:block;">
    <label><b>Category Name</b></label>
    <input type="text" name="cn" value=""  style="width:350px;display:block;">
  <input type="submit" value="Add" onclick="stay()">
 
  </div>
</form>
</div>


<div id="addsup">
<h2>Add Supplier</h2>
<form action="supplier">
 

  <div class="container">
    <label><b>Supplier Id</b></label>
    <input type="text" name="sId" value=""  style="width:350px;display:block;">
    <label><b>Supplier Name</b></label>
    <input type="text" name="sn" value=""  style="width:350px;display:block;">
        
     <input type="submit" value="Add">
  <input type="submit" value="Cancel">
  </div>

 
</form>
</div>


<div id="addpro">
<h2>Add Product</h2>
<form  action="product" method="post">
			
 <div class="container">
    <label><b>Product Id</b></label>
    <input type="text" name="pid" value=""  style="width:350px;display:block;">
    <label><b>Product Name</b></label>
    <input type="text" name="pn" value=""  style="width:350px;display:block;">
    
    <label><b>Product Description</b></label>
    <input type="text" name="pd" value=""  style="width:350px;display:block;">
    
     <%-- <label><b>Product Category</b></label>  
     <select class="form-control form-control-lg" name="procategory">
								<option>Select Category</option>
								<c:forEach var="cList" items="${clist}">

									<option value="${cList.c_id}">${cList.c_name}</option>

								</c:forEach>
							</select>   --%>
							
							<!-- DropDown input-->

     
    <label><b>Product Category</b></label>  
  <select class="form-control form-control-lg" name="pc" id="selectedRecord">
             <option>Select Category</option>
             <%
             	List<Categorymodel> clist=(List<Categorymodel>) request.getAttribute("clist");
    			for(Categorymodel c : clist){
    				out.println("<option value='"+ c.getCategoryId() +"'>"+ c.getCategoryName() + "</option>");
    			}
    			
             %>
						</select>	
						
						
						<label><b>Supplier Category</b></label>  
  <select class="form-control form-control-lg" name="psc" id="selectedRecord">
             <option>Select Supplier</option>
             <%
             	List<Suppliermodel> slist=(List<Suppliermodel>) request.getAttribute("slist");
    			for(Suppliermodel s : slist){
    				out.println("<option value='"+ s.getSupplierId() +"'>"+ s.getSupplierName() + "</option>");
    			}
    			
             %>
						</select>
							
							
							
	<%-- <label><b>Product Supplier</b></label> 		
	<select class="form-control form-control-lg"
								name="productsupplier">
								<option>Select Supplier</option>
								<c:forEach var="slist" items="${slist}">

									<option value="${slist.s_id}">${slist.s_name}</option>

								</c:forEach>
							</select>	 --%>
							
							
							
							
	<label><b>Product Price</b></label>
    <input type="text" name="pp" value=""  style="width:350px;display:block;">
    
     	
    	
    
    <label><b>Product image</b></label>
    <input type="file" name="pimg" value=""  style="width:350px;display:block;">
    	
							
  <input type="submit" value="Add">
     
  <input type="submit" value="Cancel">
  </div>
					
</form>
</div>





</body>
</html>
