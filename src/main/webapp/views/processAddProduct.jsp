<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="market.web.dao.ProductDAO"%>
<%@ page import="market.web.dto.ProductDTO"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<!-- addProdcut 에서 넘어온 모든 값을 DTO에 저장 -->
<%
	request.setCharacterEncoding("UTF-8");	// 한글처리를 위한 UTF-8 설정

	String path = application.getRealPath("imgUpload");
	int maxSize = 1024*1024*10;
	String encType = "UTF-8";
	DefaultFileRenamePolicy df = new DefaultFileRenamePolicy();
	
	MultipartRequest mr = new MultipartRequest(request, path, maxSize, encType, df);
	
	ProductDTO dto = new ProductDTO();
	dto.setProductId(mr.getParameter("productId"));
	dto.setProductName(mr.getParameter("productName"));
	dto.setProductPrice(Integer.parseInt(mr.getParameter("productPrice")));
	dto.setDescription(mr.getParameter("description"));
	dto.setCompany(mr.getParameter("company"));
	dto.setCategory(mr.getParameter("category"));
	dto.setStock(Integer.parseInt(mr.getParameter("stock")));
	dto.setCondition(mr.getParameter("condition"));
	dto.setFileName(mr.getFilesystemName("productImg"));
	
	
	ProductDAO dao = ProductDAO.getInstance();
	dao.addProduct(dto);
	application.log("======" + dao.getSize() + "=====");
	response.sendRedirect("products.jsp");
%>
