package com.github.controller;
/**
 * @author Harish
 * 
 * https://github.com/Harish046
 * 
 * <code>JspController.class</code> 
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.model.UserBean;

@Controller
public class JspController {
	
	@RequestMapping(value="/jsp/users",method=RequestMethod.GET)
	public String edit(Model model) {
		
		model.addAttribute("user", new UserBean());
		return "/jsp/UserInfo";
	}
	
	@RequestMapping(value="/jsp/users",method=RequestMethod.POST)
	public String save(@ModelAttribute UserBean user,Model model) {
		model.addAttribute("user",user);
		return "/jsp/UserDetails";
	}

}
