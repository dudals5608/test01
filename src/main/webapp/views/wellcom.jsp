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
			<h3><%= shopping %></h3>	
		</div>
	</div>
	
	<hr>
	
	<%@ include file="footer.jsp" %>

</body>
</html>