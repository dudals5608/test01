package market.web.dao;

import java.util.ArrayList;

import market.web.dto.ProductDTO;

public class ProductDAO {
		
		private static ProductDAO dao = new ProductDAO();
		
		public static ProductDAO getInstance() {
			return dao;
		}
	
		// Product 저장소
		private ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
		
		//생성자 (싱글톤을 사용하기 위해서 생성자를 private으로 변경
		private ProductDAO () {

			ProductDTO p1 = new ProductDTO();
			p1.setProductId("p1234");
			p1.setProductName("아이폰 13");
			p1.setProductPrice(130000);
			p1.setDescription("아이폰 13 프로 맥스 판매합니다");
			p1.setCompany("apple");
			p1.setCategory("스마트폰");
			p1.setStock(45);
			p1.setCondition("새상품");
			p1.setFileName("iphone13.jpg");
			
			ProductDTO p2 = new ProductDTO();
			p2.setProductId("p3215");
			p2.setProductName("아이폰 14");
			p2.setProductPrice(160000);
			p2.setDescription("아이폰 14 프로 맥스 판매합니다");
			p2.setCompany("apple");
			p2.setCategory("스마트폰");
			p2.setStock(40);
			p2.setCondition("새상품");
			p2.setFileName("iphone14.jpg");
			
			ProductDTO p3 = new ProductDTO();
			p3.setProductId("p8456");
			p3.setProductName("아이폰 15");
			p3.setProductPrice(200000);
			p3.setDescription("아이폰 15 프로 맥스 판매합니다");
			p3.setCompany("apple");
			p3.setCategory("스마트폰");
			p3.setStock(20);
			p3.setCondition("새상품");
			p3.setFileName("iphone15.jpg");
			
			productList.add(p1);
			productList.add(p2);
			productList.add(p3);
			
		}
		
		public ArrayList<ProductDTO> getList(){
			return this.productList;
		}
		
		public ProductDTO getProductById(String productId) {
			ProductDTO dto = null;
			
			for(ProductDTO pdto : productList) {
				if(productId.equals(pdto.getProductId())) {
					dto = pdto;
					break;
				}
			}
			
			return dto;
		}
		
		public void addProduct(ProductDTO dto) {
			productList.add(dto);
		}
		
		public int getSize() {
			int result = productList.size();
			return result;
		}
	}	
		
		