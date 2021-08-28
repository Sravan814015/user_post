package com.example.demo.controllers;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.models.post;
import com.example.demo.services.postservice;
import com.example.demo.services.userservice;

@Controller
public class postcontroller {
	@Autowired
	userservice usser;
	@Autowired
	postservice pstserv;

	@RequestMapping("/postn")
	public ModelAndView postn(HttpSession hts) {
//		System.out.println(hts.getAttribute("name"));
		return new ModelAndView("user_post/postn", "post", new post());

	}

	@RequestMapping("/listp")
	public ModelAndView postl() {

		return new ModelAndView("user_post/listp", "allpost", pstserv.getall());
	}

	@RequestMapping("/savep")
	public ModelAndView postl(post p, HttpSession hts) {
		p.setUs(usser.getbyid((Integer) hts.getAttribute("uid")));

		pstserv.savep(p);
		return postl();
	}
}
