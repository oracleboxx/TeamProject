package com.team3web.shop.service;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team3web.shop.dao.ProductDAO;
import com.team3web.shop.vo.ProductVO;
@Service
public class ProductServiceImpl implements ProductService {
	@Inject
	ProductDAO productDao;
	
	
	
	@Override
	public List<ProductVO> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Override
	public void addProduct(ProductVO product) {
		productDao.addProduct(product);
	}

	@Override
	public void productModify(ProductVO vo) {
	}

	@Override
	public void productDelete(int productId) {
	}

	@Override
	public ProductVO getProductById(int productId) {
		
		return productDao.getProductById(productId);
	}
    

}
