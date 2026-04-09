package com.shopmilk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.shopmilk.entities.User;
import com.shopmilk.repository.UserRepo;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepo userRepo;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		return userRepo.findUserByEmail(email);
	}
	@Override
	public boolean addUser(User user) {
		
		if(userRepo.findUserByEmail(user.getMail())!=null)
		{
			return false;
		}
		
		// mã hoá mật khẩu trc khi lưu vào db, ko mã hoá là ko login đc
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(16);
		System.out.println(user.getPassword());
		user.setPassword(encoder.encode(user.getPassword()));
		user.setRole("user");
		userRepo.save(user);
		return true;
	}

}
