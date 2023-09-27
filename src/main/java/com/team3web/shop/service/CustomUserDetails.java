package com.team3web.shop.service;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUserDetails extends User {
   
   private final String name;
   private final String nickName;
   
   public CustomUserDetails(String username, String password, Collection<? extends GrantedAuthority> authorities, String nickName, String name) {
        super(username, password, authorities);
        this.nickName = nickName;
        this.name = name;
    }

    public String getNickName() {
        return nickName;
    }
    
    public String getName() {
       return name;
    }
}