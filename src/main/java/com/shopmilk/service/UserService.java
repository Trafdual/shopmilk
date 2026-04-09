package com.shopmilk.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.shopmilk.entities.User;

public interface UserService extends UserDetailsService{
	public boolean addUser(User user);
}
