package com.team3web.shop.mapper;

import java.util.List;

import com.team3web.shop.vo.ProductVO;

public interface ProductMapper {
	  List<ProductVO> getAllProducts();
	    ProductVO getProductById(int productId);
	    void addProduct(ProductVO product);
	    void updateProduct(ProductVO product);
	    void deleteProduct(int productId);
}
