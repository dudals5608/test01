<%@page import="market.web.dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="market.web.dto.ProductDTO"%>
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
			<h3><%= products %></h3>	
		</div>
	</div>
	
	<hr>
	
	<div class="container">
		<div class="row" >
			<div class="col-md-6">
				<% 
					ProductDAO dao = ProductDAO.getInstance();
					String productId = request.getParameter("productId"); 
					ProductDTO dto = dao.getProductById(productId);
				%>
				<img src="/market/imgUpload/<%=dto.getFileName()%>" width="300" height="400">
				<h3>상품명 : <%=dto.getProductName() %></h3>
				<p>상품가격 : <%=dto.getProductPrice() %></p>
				<p>상품설명 : <%=dto.getDescription() %></p>
				<p>제조사 : <%=dto.getCompany() %></p>
				<p>카테고리 : <%=dto.getCategory() %></p>
				<p>상품설명 : <%=dto.getCompany() %></p>
				<p>재고 : <%=dto.getStock() %></p>
				<p>새상품 or 중고 : <%=dto.getCondition() %></p>
			</div>
		</div>
	</div>
	
	<hr>
	
	<%@ include file="footer.jsp" %>

</body>
</html>