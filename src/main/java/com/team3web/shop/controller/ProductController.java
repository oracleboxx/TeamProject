package com.team3web.shop.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.team3web.shop.service.ProductService;
import com.team3web.shop.util.UploadFileUtils;
import com.team3web.shop.vo.ProductVO;

// 제품 관련 컨트롤러
@Controller
public class ProductController {
	 @Autowired
	    private ProductService productService;
	 
	 
		@Resource(name = "uploadPath")
		private String uploadPath;
	   private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	   
	 //남성 카테고리
	   @RequestMapping(value = "/mens", method = RequestMethod.GET)
	
	 
	    public String getMens() throws Exception {
	        logger.info("get mens()");
	        
	        
	    return "/category/men/mens";    
	   }
	   //셔츠
	   @RequestMapping(value = "/mens/shirts" ,method = RequestMethod.GET)
	   public String getShirts() throws Exception{
		   logger.info("get shirts");
		   return "/category/men/shirts";
		   
	   }
	   //바지
	   @RequestMapping(value ="/mens/pants", method = RequestMethod.GET)
	   public String getPants() throws Exception{
		   logger.info("get pants");
		   
		   return "/category/men/pants";
	   }
	   
	   @RequestMapping(value = "/womens", method = RequestMethod.GET)
	   public String getWomens() throws Exception{
		   logger.info("get women");
		   return "/category/women/womens";
	   }
	   
	   @RequestMapping(value = "/womens/dresses", method = RequestMethod.GET)
	   public String getDress() throws Exception{
		   logger.info("get dress");
		   return "/category/women/dresses";
	   }
	   
	   @RequestMapping(value = "/womens/skirts", method = RequestMethod.GET)
	   public String getSkirts() throws Exception{
		   logger.info("get skirts");
		   return "/category/women/skirts";
	   }
	   
	   
	  
	   

	    @RequestMapping(value="/product", method= RequestMethod.GET)
	    public String productList(Model model) {
	        List<ProductVO> products = productService.getAllProducts();
	      
	        model.addAttribute("products", products);
	        return "/product"; // products.jsp로 이동
	    }
	    

	    @RequestMapping(value="/addProductForm", method= RequestMethod.GET)  
	    public String addProductForm() {
	    	logger.info("addform()");
	        return "/addProductForm"; // addProductForm.jsp로 이동
	    }
	    
	    
	    @RequestMapping(value="/addProduct", method= RequestMethod.POST)  
	    public String addProduct(@ModelAttribute ProductVO product , MultipartFile file ) {
	    	
	    
	    	
	    	String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = null;

			if(file != null) {
			 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
			} else {
			 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			}

			product.setImageUrl(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			vo.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
			
	        productService.addProduct(product);
	        logger.info("addProduct()"+product);
	        return "redirect:/"; // 상품 목록 페이지로 리다이렉트
	        
	        
	        
	    }
	    
	  
	 

	    @RequestMapping(value="/productItem" ,method= RequestMethod.GET)
	    public String getProductDetail(@RequestParam(name="productId") int productId, Model model) {
	        // productId를 사용하여 해당 제품 정보를 검색
	        ProductVO product = productService.getProductById(productId);
	        logger.info("productId 값:"+ productId);
	        // 모델에 제품 정보 추가
	        model.addAttribute("product", product);

	        // 상세 페이지 JSP로 이동
	        return "/productItem"; // 이 부분은 실제 상세 페이지 JSP 파일명으로 변경해야 합니다.
	    }
	    
	    
	  
}
