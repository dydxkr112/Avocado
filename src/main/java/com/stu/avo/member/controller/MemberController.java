package com.stu.avo.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("loginMain.mem")
	public String loginPage() {
		return "login/loginMain";
	}
	@RequestMapping("signUpPage.mem")
	public String signUpPage() {
		return "login/signUpPage";
	}
}
