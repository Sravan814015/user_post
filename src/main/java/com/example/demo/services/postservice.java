package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.post;
import com.example.demo.repositeries.postreposit;

@Service
public class postservice {
	@Autowired
	postreposit pstrep;

	public void savep(post p) {
		pstrep.save(p);
	}

	public List<post> getall() {
		return pstrep.findAll();
	}
}
