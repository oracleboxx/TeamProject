package com.team3web.shop.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class CategoryVO {
    private int categoryId;
    private String categoryName;

    public CategoryVO(int categoryId, String categoryName) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
    }
    
}
