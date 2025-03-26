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
		<div class="row" align = "center">
			<%
				ProductDAO dao = ProductDAO.getInstance();
				ArrayList<ProductDTO> list = dao.getList();
				for(ProductDTO dto : list){%>
					<div class = col-md-4>
						<img src="/market/imgUpload/<%=dto.getFileName()%>" width="300" height="400">
						<h3><%= dto.getProductName() %></h3>
						<p><%= dto.getDescription() %></p>
						<p><%= dto.getProductPrice() %></p>
						<a href="product.jsp?productId=<%= dto.getProductId() %>" class="btn btn-primary">상품 상세</a>
					</div>
				<%}
			%>
		</div>
	</div>
	
	<hr>
	
	<%@ include file="footer.jsp" %>

</body>
</html>