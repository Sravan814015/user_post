package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.userinfo;
import com.example.demo.repositeries.userreposit;

@Service
public class userservice {
	@Autowired
	userreposit usreposit;

	public void saveuser(userinfo us) {
		usreposit.save(us);
	}

	public userinfo check(userinfo us) {
		return usreposit.check(us.getEmail(), us.getPass());
	}
	public userinfo getbyid(int id) {
		return usreposit.findById(id).orElse(null);
	}

}
