<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="Text.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="bootstrap.jsp" %>
</head>
<body>
	<%@ include file="menu.jsp" %>

	
	<!-- 상단 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3 text-center"><%= title %></h1>	
		</div>
	</div>
	
	<hr>
	
	<!-- 중단 -->
	<div class="container">
		<div class="text-center">
			<h3><%= addProduct %></h3>	
		</div>
	</div>
	
	<hr>
	
	<div class="container">
		<form class="form-horizontal" action="processAddProduct.jsp" method="post" encType="multipart/form-data">
			
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 이름</label>
				<div class="col-sm-3">
					<input type="text" name="productName" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 가격</label>
				<div class="col-sm-3">
					<input type="text" name="productPrice" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 설명</label>
				<div class="col-sm-3">
					<input type="text" name="description" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="company" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">카테고리</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">재고</label>
				<div class="col-sm-3">
					<input type="text" name="stock" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">신상 or 중고</label>
				<div class="col-sm-3">
					<input type="text" name="condition" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 사진</label>
				<div class="col-sm-3">
					<input type="file" name="productImg" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-3">
					<input type="submit" value="상품등록" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
	
	<hr>
	<%@ include file="footer.jsp" %>

</body>
</html>