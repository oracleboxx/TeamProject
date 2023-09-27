package com.team3web.shop.vo;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class ProductVO {
private int productId;
private String name;
private int price;
private int stock;
private String imageUrl;
private String pcode;


// 기본 생성자
public ProductVO() {
}


public ProductVO(int productId, String name, int price, int stock, String imageUrl, String pcode) {
    this.productId = productId;
    this.name = name;
    this.price = price;
    this.stock = stock;
    this.imageUrl = imageUrl;
    this.pcode = pcode;
   
}

}
