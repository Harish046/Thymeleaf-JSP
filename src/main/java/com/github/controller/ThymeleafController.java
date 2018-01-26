package com.github.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.model.UserBean;

@Controller
public class ThymeleafController {
	
	@RequestMapping(value="/users/thymeleaf",method=RequestMethod.GET)
	public String edit(Model model) {
		model.addAttribute("user", new UserBean());
		return "UserInfo";
	}
	@RequestMapping(value="/users/thymeleaf",method=RequestMethod.POST)
	public String save(@ModelAttribute UserBean user,Model model) {
		model.addAttribute("user",user);
		return "UserDetails";
	}

}
