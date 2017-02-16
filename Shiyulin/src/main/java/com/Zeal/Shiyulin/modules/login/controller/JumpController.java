package com.Zeal.Shiyulin.modules.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JumpController {

	@RequestMapping(value="/getIndexPage",method={RequestMethod.GET, RequestMethod.POST})
	public String getIndexPage(Model model) {
		return "index1";
	}
}
