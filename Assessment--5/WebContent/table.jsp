<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <a class="navbar-brand" href="#">Shop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="view">View items</a>
      </li>
      
     
  </div>
</nav>
<div><br></div>

 
<h1 style="background-color:blue; text-align:center" >Item list</h1>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Item</th>
         <th scope="col">options</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="it" items="${Item}">
			<tr>
			 <td>${it.id1}</td>
				<td>${it.name}</td>
				<td>${it.desp}</td>
				<td>${it.price}</td>
				<td>${it.quantity}</td>
				<td><a href="delete?id1=${it.id1}">Delete</a>  
				<td><a href="update?id2=${it.id1}">Update</a> 
			</tr>
			
		</c:forEach>
   
  </tbody>
</table>

</body>
</html>