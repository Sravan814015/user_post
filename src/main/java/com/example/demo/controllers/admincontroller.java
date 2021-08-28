package com.example.demo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.models.admin;
import com.example.demo.models.post;
import com.example.demo.models.userinfo;
import com.example.demo.services.adminservice;

@Controller
public class admincontroller {
	@Autowired
	adminservice adserv;

	@RequestMapping("/adminlog")
	public ModelAndView login() {
		return new ModelAndView("admin/login", "admin", new admin());
	}

	@RequestMapping("/view")
	public ModelAndView view() {
		return new ModelAndView("admin/view");
	}

	@RequestMapping("/checka")
	public ModelAndView check(admin ad, HttpSession hts,Model m) {
		admin ad1 = adserv.check(ad);
		if (ad1 != null) {
			hts.setAttribute("admin_n", ad1.getName());
			return new ModelAndView("admin/view");
		} else {
			m.addAttribute("invalid1", "pls enter the valid email and password");
			return login();
		}

	}

	@RequestMapping("/logouta")
	public ModelAndView logout(HttpSession hts) {
		hts.removeAttribute("admin_n");
		return login();
	}

//	
	@RequestMapping("/listusers")
	public ModelAndView listu() {
		return new ModelAndView("admin/listusers", "listu", adserv.getuser());
	}

	@RequestMapping("/listpost")
	public ModelAndView listp() {
		return new ModelAndView("admin/listpost", "listp", adserv.getpost());
	}

	@RequestMapping(path = "/deleteCustomer")
	public ModelAndView deletet(@RequestParam("id") int customerId) {
		adserv.deleteu(customerId);
		return listu();
	}

	@RequestMapping(path = "/updateCustomer")
	public ModelAndView getid(@RequestParam("id") int customerId) {
		return new ModelAndView("admin/getu", "User", adserv.getid(customerId));
	}

	@RequestMapping("/updateu")
	public ModelAndView update(userinfo us) {
		adserv.update(us);
		return listu();

	}
	@RequestMapping(path = "/deletepost")
	public ModelAndView deletep(@RequestParam("id") int customerId) {
		adserv.deletep(customerId);
		return listp();
	}

	@RequestMapping(path = "/updatepost")
	public ModelAndView getidp(@RequestParam("id") int customerId) {
		return new ModelAndView("admin/getp", "Post", adserv.getidp(customerId));
	}

	@RequestMapping("/updatep")
	public ModelAndView updatep(post p) {
		adserv.updatep(p);
		return listp();

	}

}
