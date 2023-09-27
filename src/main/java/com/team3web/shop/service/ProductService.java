package com.team3web.shop.service;

import java.util.List;

import com.team3web.shop.vo.ProductVO;

public interface ProductService {

	public List<ProductVO> getAllProducts();

	//상품 목록
	
	public ProductVO getProductById(int productId);

	public void addProduct(ProductVO product);
		
	

	
	//상품 수정
	public void productModify(ProductVO vo) ;
	
	
	//상품 삭제 
	public void productDelete(int  productId) ;

	
}
