<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<!-- <style>
table,th,td
{
border:2px solid blue;
border-collapse:collapse;
padding:5px;
}

</style> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
   <div class="row">
   
   <p></p>
   <h1>Products List</h1>   
   <p> </p><p> </p>
   
       <div class="col-md-10 col-md-offset-1">

           <div class="panel panel-default panel-table">
             <div class="panel-heading">
               <div class="row">
                 <div class="col col-xs-6">
                   <h3 class="panel-title">Category Data Table</h3>
                 </div>
                 <div class="col col-xs-6 text-right">
                   <button type="button" class="btn btn-sm btn-primary btn-create">Create New</button>
                 </div>
               </div>
             </div>
             <div class="panel-body">
               <table class="table table-striped table-bordered table-list">
                 <thead>
                   <tr>
                       <th><em class="fa fa-cog"></em></th>
                       <th class="hidden-xs">ID</th>
                       <th>Name</th>
                       <th>Description</th>
                       <th>Category</th>
                       <th>Supplier</th>
                       <th>Price</th>
                       <th>Image</th>                                                                        
                   </tr> 
                 </thead>
                 <tbody>
                         
                         <c:forEach items="${list }" var="p">
                         <tr>
                         <td>
                             <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                             <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                           </td>
                           <td class="hidden-xs">${p.prodId }</td>
                           <td>${p.prodName }</td>
                           <td>${p.prodDescription }</td>
                           <td>${p.prodCategory.categoryName}</td>     
                           <td>${p.prodSupplier.supplierName }</td>         
                           <td>${p. prodPrice}</td> 
                           <td><%-- <img src="./resources/uploads/products/${p.image}"  class="img-rounded" alt="${p.prodName }" width="75px" height="50px"/> --%></td>         
                           <tr>       
                         </c:forEach>
                       </tbody>
               </table>
           
             </div>
             <div class="panel-footer">
               <div class="row">
                 <div class="col col-xs-4">Page 1 of 5
                 </div>
                 <div class="col col-xs-8">
                   <ul class="pagination hidden-xs pull-right">
                     <li><a href="#">1</a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">4</a></li>
                     <li><a href="#">5</a></li>
                   </ul>
                   <ul class="pagination visible-xs pull-right">
                       <li><a href="#">«</a></li>
                       <li><a href="#">»</a></li>
                   </ul>
                 </div>
               </div>
             </div>
           </div>

</div></div></div>

<%-- <h2>Television Details</h2>
<table>
<tr>
<th>Product ID</th>
<th>Product Brand</th>
<th>Name</th>
<th>Description</th>
<th>Price</th>
<th>Quantity</th>
<th>Category</th>
<th>Supplier</th>
</tr>
<%

Teledao dao=(Teledao)request.getAttribute("prodD");
List<Telemodel> pm=dao.getAllProductDetails();
out.println("<h1> Television Details:"+ pm.size()+"</h1>");

for(Telemodel t:pm)
{
	out.println("<tr>");
	out.println("<td>"+t.getProdId()  +"</td>");
/* 	out.println("<td>"+t.getProdBrand()  +"</td>"); */
	out.println("<td>"+t.getProdName()  +"</td>");
	out.println("<td>"+t.getProdDescription()  +"</td>");
	out.println("<td>"+t.getProdPrice()  +"</td>");
	/* out.println("<td>"+t.getProdQuantity()  +"</td>"); */
	out.println("<td>"+t.getProdCategory() +"</td>");
	out.println("<td>"+t.getProdSupplier()  +"</td>");
	
}

%>

</table> --%>

</body>
</html>
