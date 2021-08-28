package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.admin;
import com.example.demo.models.post;
import com.example.demo.models.userinfo;
import com.example.demo.repositeries.adminreposit;
import com.example.demo.repositeries.postreposit;
import com.example.demo.repositeries.userreposit;

@Service
public class adminservice {
	@Autowired
	adminreposit adrepos;
	@Autowired
	userreposit uss;
	@Autowired
	postreposit ps;

	public admin check(admin ad) {
		return adrepos.check(ad.getEmail(), ad.getPass());
	}

	public List<userinfo> getuser() {
		return uss.findAll();
	}

	public List<post> getpost() {
		return ps.findAll();
	}

	public void deleteu(int id) {
		uss.deleteById(id);
	}

	public userinfo getid(int id) {
		return uss.findById(id).orElse(null);
	}

	public void update(userinfo us) {
		userinfo us1 = uss.findById(us.getId()).orElse(null);
		us1.setName(us.getName());
		us1.setEmail(us.getEmail());
		us1.setPass(us.getPass());
		us1.setGender(us.getGender());
		uss.save(us1);

	}

	public void deletep(int id) {
		ps.deleteById(id);
	}

	public post getidp(int id) {
		return ps.findById(id).orElse(null);
	}

	public void updatep(post p) {
		post p1 = ps.findById(p.getId()).orElse(null);
		p1.setTittle(p.getTittle());
		p1.setDesc_p(p.getDesc_p());
		p1.setTime_post(p.getTime_post());
		ps.save(p1);

	}

}
