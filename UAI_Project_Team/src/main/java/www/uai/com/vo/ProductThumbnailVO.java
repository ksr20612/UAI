package www.uai.com.vo;

public class ProductThumbnailVO {
	
	private ProductVO productVO;
	private String thumbnail;
	
	public ProductThumbnailVO() {}
	
	public ProductThumbnailVO(ProductVO productVO, String thumbnail) {
		super();
		this.productVO = productVO;
		this.thumbnail = thumbnail;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
}
