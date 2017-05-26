<%@ page import="com.niit.entertainment_backend.impl.* %> 
<%@ page import="com.niit.entertainment_backend.dao.*" %> 
<%@ page import="com.niit.entertainment_backend.model.*" %> 
<%@ page import="com.niit.entertainment_backend.service.*" %> 
<%@ page import="java.util.*" %>

<html>
<head>
<style>
table,th,td
{
border:2px solid blue;
border-collapse:collapse;
padding:5px;
}

</style>
</head>
<body>
<h2>Television Details</h2>
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
	out.println("<td>"+t.getProdBrand()  +"</td>");
	out.println("<td>"+t.getProdName()  +"</td>");
	out.println("<td>"+t.getProdDescription()  +"</td>");
	out.println("<td>"+t.getProdPrice()  +"</td>");
	out.println("<td>"+t.getProdQuantity()  +"</td>");
	out.println("<td>"+t.getProdCategory() +"</td>");
	out.println("<td>"+t.getProdSupplier()  +"</td>");
	
}

%>

</table>

</body>
</html>
