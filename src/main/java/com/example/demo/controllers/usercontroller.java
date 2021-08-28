package com.example.demo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.models.userinfo;
import com.example.demo.services.userservice;
//import com.sun.tools.javac.util.StringUtils;

@Controller
public class usercontroller {
	@Autowired
	userservice usserv;

	@RequestMapping("/")
	public ModelAndView main() {
		return new ModelAndView("index");
	}

	@RequestMapping("/newu")
	public ModelAndView newu() {
		return new ModelAndView("userreg", "user", new userinfo());
	}

	@RequestMapping("/logu")
	public ModelAndView logu() {
		return new ModelAndView("userlog", "user", new userinfo());
	}

	@RequestMapping("/saveu")
	public ModelAndView saveu(userinfo us) {
		
		usserv.saveuser(us);
		return logu();

	}

	@RequestMapping("/checku")
	public ModelAndView checku(userinfo us, HttpSession hts,Model m) {
		userinfo us1 = usserv.check(us);

		if (us1 != null) {
			hts.setAttribute("name", us1.getName());
			hts.setAttribute("uid", us1.getId());
			return main();
		} else {
			m.addAttribute("invalid", "pls enter the valid email and password");
			return logu();
		}

	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession hts) {
		hts.removeAttribute("name");
		return main();
	}

}
