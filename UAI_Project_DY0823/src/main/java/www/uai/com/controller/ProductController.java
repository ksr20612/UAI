package www.uai.com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import www.uai.com.service.ContentService;
import www.uai.com.service.PageService;
import www.uai.com.service.ProductService;
import www.uai.com.vo.OrderDataVO;
import www.uai.com.vo.PageVO;
import www.uai.com.vo.ProductDataVO;
import www.uai.com.vo.ProductThumbnailVO;
import www.uai.com.vo.ProductVO;
import www.uai.com.vo.WishListVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private PageService pageService;
	@Autowired
	private ContentService contentService;

	@RequestMapping("/productListPage")
	public String productListPage(Model model, String nowPage, String changePage, String p_type, String p_location,
			String searchWord, String order) {

		// 페이지 처리한 거 여기다 분리해서 적어주기
		int limit = 3;
		int pageGroupLimit = 5;

		int listCount = 0;

		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		PageVO pageVO = new PageVO();
		ArrayList<String> locationList = new ArrayList<String>();
		ArrayList<ProductThumbnailVO> productListWithImage = new ArrayList<ProductThumbnailVO>();
		ProductThumbnailVO productThumbnailVO = new ProductThumbnailVO();
		
		listCount = productService.getProductListCount(p_type, p_location, searchWord);
		  
		pageVO = pageService.showPage(nowPage, limit, pageGroupLimit, changePage, listCount);
		  
		nowPage = pageVO.getNowPage();
		  
		productList= productService.getProductList(model, nowPage, limit, p_type, p_location, searchWord, order);
		
		for(ProductVO product: productList) {
			String p_idx = product.getP_idx();
			
			String thumbnail = productService.getProductThumbnail(p_idx);
			
			productThumbnailVO.setProductVO(product);
			productThumbnailVO.setThumbnail(thumbnail);
			
			productListWithImage.add(productThumbnailVO);
		}
		
		locationList = productService.getLocationList(p_type, p_location, searchWord);
		  
		model.addAttribute("locationList", locationList);
		model.addAttribute("listCount", listCount);
		model.addAttribute("productDataList", productListWithImage);
		model.addAttribute("pageVO", pageVO);
		 
		
		// 페이지 이동해도 조건을 계속 들고있기 위함
		model.addAttribute("p_type", p_type);
		model.addAttribute("p_location", p_location);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("order", order);
		
		return "productListPage";

	}

	@RequestMapping("/readProductPage")
	public String readProductPage(Model model, HttpSession session, ProductVO productParam) {
		
		ProductDataVO productDataVO = productService.readProductPage(model, productParam);
		//String p_idx = productDataVO.getProductVO().getP_idx();
		model.addAttribute("productData", productDataVO);

		// 찜 목록에 해당 상품이 있는지를 보여주세요
		Boolean IsWished = productService.checkwishlist(model, session, productParam);
		model.addAttribute("IsWished", IsWished);

		// 별점 준 리뷰의 수를 보여주세요
		int starCount = contentService.getStarCount(productParam);
		model.addAttribute("starCount", starCount);
		
		// 최근 본 상품(3개)
		// 넣을 애 만드는 작업
		/*ArrayList<ProductThumbnailVO> recentlyClicked = null;
		ProductThumbnailVO productData = new ProductThumbnailVO();
		productData.setProductVO(productDataVO.getProductVO());
		productData.setThumbnail(productDataVO.getFileList().get(0).getF_path());
		
		// 세션에 저장된 리스트가 비어있지 않으면 그 애를 가져와서 쓰기
		if(session.getAttribute("recentlyClicked") != null) {
			recentlyClicked = (ArrayList<ProductThumbnailVO>)session.getAttribute("recentlyClicked");
		}
		
		// 중복 확인하기 & 리스트에 값이 없을 경우 첫번째 자리에 넣어주기
		boolean isAlreadyClicked = false;
		if(recentlyClicked == null || recentlyClicked.size() <= 3) {
			if(recentlyClicked == null) {
				boolean nothin = recentlyClicked.add(productData); //비어있으면 넣어주기
				isAlreadyClicked = true;
			}else {
				for(int i=1; i<=recentlyClicked.size(); i++){ //중복확인용
					String alreadyClicked = recentlyClicked.get(i).getProductVO().getP_idx();
					if(p_idx.equals(alreadyClicked)){ //이미 있다
						isAlreadyClicked = true;
					}else{ //없다
						break;
					}
				}
			}
		}
		
		// 상품 넣어주기
		if(isAlreadyClicked == false){ 
			if(recentlyClicked.size()==3) {
				ProductThumbnailVO removedData = recentlyClicked.remove(1);
				boolean nothin = recentlyClicked.add(productData);
			}else {
				boolean nothin = recentlyClicked.add(productData);
			}
			
		}
		session.setAttribute("recentlyClicked", recentlyClicked); */
		////////
		
		return "readProductPage";
	}

	@RequestMapping("/readWishlistPage")
	public String wishListPage(Model model, HttpSession session, String nowPage, String changePage) {

		ArrayList<ProductDataVO> wishlistData = productService.readwishlistPage(model, session, nowPage);

		model.addAttribute("wishlistData", wishlistData);

		// 페이지 처리
		int limit = 5;
		int pageGroupLimit = 5;

		int listCount = productService.getWishListCount();

		PageVO pageVO = pageService.showPage(nowPage, limit, pageGroupLimit, changePage, listCount);

		model.addAttribute("pageVO", pageVO);

		return "readWishlistPage";
	}

	@RequestMapping("/buyProductPage")
	public String buyProductPage(Model model, ProductVO productParam) {

		ProductDataVO productData = productService.readProductPage(model, productParam);

		model.addAttribute("productData", productData);

		return "buyProductPage";
	}

	@RequestMapping("/buyProductAction")
	public String buyProductAction(OrderDataVO orderParam) {

		// 로그인되면 session에서 처리
		orderParam.setM_idx("1");

		productService.buyProductAction(orderParam);

		// 구매수 올리기
		String p_idx = orderParam.getP_idx();
		productService.increaseBuyCount(p_idx);

		return "buyProductCompletePage";
	}

	@RequestMapping("/addWishlist")
	@ResponseBody
	public void addWishlist(@RequestParam String p_idx) {

		WishListVO wishParam = new WishListVO();
		wishParam.setP_idx(p_idx);

		productService.addWishlist(wishParam);
	}

	@RequestMapping("/removeWishlist")
	@ResponseBody
	public void removeWishlist(@RequestParam String p_idx) {

		WishListVO wishParam = new WishListVO();
		wishParam.setP_idx(p_idx);

		productService.removeWishlist(wishParam);
	}

	@RequestMapping(value = "/autosearchWord", produces = "application/text; charset=utf8")
	@ResponseBody
	public String autoSearchWord(@RequestParam String keyword) {

		List<ProductVO> dataList = productService.autoSearchWord(keyword);

		// json으로 쪼개주기
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("keyword", dataList);
		String jsonInfo = jsonObject.toString();

		return jsonInfo;

	}
}
