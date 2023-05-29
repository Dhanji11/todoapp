<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./stylejs.jsp"%>
</head>
<body>

<div class="container mt-3">
<div class="row">
<div class="col-md-6 offset-md-3">
	<form action="${pageContext.request.contextPath }/handle-product" method="post" class="form-horizontal">
	<input type="hidden" value="${product.id }" name="id"/>
		<fieldset>

			<!-- Form Name -->
			<legend class="text-center mb-3">Change product details</legend>

			<!-- Text input-->
		 <!--  	<div class="form-group">
				<label class="col-md-4 control-label" for="product_id">PRODUCT
					ID</label>
				<div class="col-md-4">
					<input id="id" name="id" placeholder="PRODUCT ID"
						class="form-control input-md" required="" type="text">

				</div>
			</div>  
			 -->

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">PRODUCT
					NAME</label>
				<div class="col-md-4">
					<input id="name" name="name" placeholder="PRODUCT NAME"
						class="form-control input-md" required="" type="text" value="${product.name}">

				</div>
			</div>

			<!-- Select Basic -->
			<!--<div class="form-group">-->
			<!--  <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>-->
			<!--  <div class="col-md-4">-->
			<!--    <select id="product_categorie" name="product_categorie" class="form-control">-->
			<!--    </select>-->
			<!--  </div>-->
			<!--</div>-->

			<!-- Text input-->
			<!--<div class="form-group">-->
			<!--  <label class="col-md-4 control-label" for="available_quantity">AVAILABLE QUANTITY</label>  -->
			<!--  <div class="col-md-4">-->
			<!--  <input id="available_quantity" name="available_quantity" placeholder="AVAILABLE QUANTITY" class="form-control input-md" required="" type="text">-->

			<!--  </div>-->
			<!--</div>-->


			<!-- Textarea -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_description">PRODUCT
					DESCRIPTION</label>
				<div class="col-md-4">
					<textarea class="form-control" id="description" name="description" value="${product.description}"></textarea>
				</div>
			</div>

			<!-- Textarea -->
			<!--<div class="form-group">-->
			<!--  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>-->
			<!--  <div class="col-md-4">                     -->
			<!--    <textarea class="form-control" id="product_name_fr" name="product_name_fr"></textarea>-->
			<!--  </div>-->
			<!--</div>-->

			<!-- Text input-->
			<!--<div class="form-group">-->
			<!--  <label class="col-md-4 control-label" for="percentage_discount">PERCENTAGE DISCOUNT</label>  -->
			<!--  <div class="col-md-4">-->
			<!--  <input id="percentage_discount" name="percentage_discount" placeholder="PERCENTAGE DISCOUNT" class="form-control input-md" required="" type="text">-->

			<!--  </div>-->
			<!--</div>-->



			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="comment">Product
					price</label>
				<div class="col-md-4">
					<input id="price" name="price" placeholder="Product-price"
						class="form-control input-md" required="" type="text" value="${product.price}">

				</div>
			</div>


			<!-- Button -->
			<div class="form-group">
				<div class="col-md-4">
					<a href="${pageContext.request.contextPath}/"
						class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-warning">Update</button>
				</div>
			</div>

		</fieldset>
	</form>
	</div>
	</div>
	</div>
</body>
</html>