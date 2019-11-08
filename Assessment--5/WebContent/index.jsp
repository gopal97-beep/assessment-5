<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
<div class="container">
<div class="rows">
<div class="col-md-6">
<form method="post" action="add">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter product id</label>
    <input type="number" class="form-control" required="" id="exampleInputEmail1" aria-describedby="emailHelp" name="id" placeholder="Enter id">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Name</label>
    <input type="text" class="form-control"  required="" id="exampleInputPassword1" name="name" placeholder="Enter name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Description</label>
    <input type="text" class="form-control"  required="" id="exampleInputPassword1"  name="desp" placeholder="Enter Description">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter price</label>
    <input type="number" class="form-control" required="" id="exampleInputPassword1" name="price" placeholder="Enter price">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Quantity</label>
    <input type="number" class="form-control" required="" id="exampleInputPassword1" name="quantity" placeholder="Enter Quantity">
  </div>
  <input type="submit" class="btn btn-primary" value="Add">
</form>
</div>
</div>
</div>





<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>