package com.team3web.shop;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team3web.shop.vo.ProductVO;

@Controller
@RequestMapping("/")
public class IndexController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Locale locale, Model model) {
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String name = authentication.getName(); // 현재 인증된 사용자의 이름

        model.addAttribute("name", name);
        
        
            // 쇼핑몰 제품 정보를 생성 (예시로 사용)
            List<ProductVO> products = createProducts();

            // 제품 정보를 JSP 파일로 전달
            model.addAttribute("products", products);

            // 제품 목록을 표시할 JSP 파일 이름 반환
            // product.jsp 파일을 참조 
        return "index";
        
    }
    private List<ProductVO> createProducts() {
    List<ProductVO> products = new ArrayList<>();
    // 여기에 쇼핑몰 제품 정보 생성 로직을 추가하세요.
    // 예를 들어, 데이터베이스에서 정보를 조회하거나 하드코딩한 정보를 사용할 수 있습니다.
    // 아래는 예시 데이터를 생성하는 코드입니다.
    
    for (int i = 1; i <= 4; i++) {
        ProductVO product = new ProductVO(i, "Product " + i, 1000 * i, 10, "/resources/img/men/amen" + i + ".png", "P00" + i);
        product.setProductId(i);
        product.setName("Product " + i);
        product.setPrice(1000 * i);
        product.setStock(10);
        product.setImageUrl("/resources/img/men/amen" + i + ".png");
        product.setPcode("P00" + i);
        
        products.add(product);
    }

    return products;
}
    
}
