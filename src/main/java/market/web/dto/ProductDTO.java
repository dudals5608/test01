package market.web.dto;

public class ProductDTO {
	private String productId;		// 상품 id
	private String productName;		// 상품 이름
	private int productPrice;		// 상품 가격
	private String description;		// 상품 설명
	private String company;			// 제조사
	private String category;		// 카테고리
	private int stock;			// 재고
	private String condition;		// 신상 or 중고
	private String fileName;		// img 이름
	
	
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getProductId() {
		return productId;
	}
	
	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public int getProductPrice() {
		return productPrice;
	}
	
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String descripion) {
		this.description = descripion;
	}
	
	public String getCompany() {
		return company;
	}
	
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public int getStock() {
		return stock;
	}
	
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	public String getCondition() {
		return condition;
	}
	
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
	
}
