<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./stylejs.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>home page</title>
</head>
<body>

<div class="container mt-3">
<div class="row">
  <div class="col-md-12">
	<h1 class="text-center mb-3">Product details </h1>
	
	<table class="table">
  <thead class="table-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${ products}" var="p" >
     <tr>
      <th scope="row">${p.id }</th>
      <td>${p.name}</td>
      <td>${p.description}</td>
      <td class="font-wight-bold">&#x20B9; ${p.price}</td>
      <td><a href="delete/${p.id}"><i class="fas fa-trash-alt text-danger" style="font-size:30px;"></i></a>
      <a href="update/${p.id}"><i class="fas fa-pen-nib text-primary" style="font-size:30px;"></i></a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
  <div class="container text-center">
  <a href="add-product" class="btn btn-outline-success">Add Product</a>
</div>
</div>
</body>
</html>