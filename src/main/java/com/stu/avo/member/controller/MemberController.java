package com.stu.avo.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stu.avo.member.model.service.MemberService;
import com.stu.avo.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("loginMain.mem")
	public String loginPage() {
		return "login/loginMain";
	}
	
	@RequestMapping("signUpPage.mem")
	public String signUpPage() {
		return "login/signUpPage";
	}
	
	//testmapping
	@RequestMapping("test.mem")
	public String testPage() {
		return "login/testPage";
	}
	
	@RequestMapping("insertMember.mem")
	public String insertMember(Member m) {
		System.out.println("Member M : " + m);
		int result = memberService.insertMember(m);
		return "login/loginMain";
	}
	
	@RequestMapping("loginCheck.mem")
	public String loginCheck(Member m, HttpServletRequest request) {
		System.out.println("Member m : " + m );
		Member mm = memberService.checkPwd(m);
		
		if(mm != null) {
			request.getSession().setAttribute("loginUser", mm);
			return "main/main";
		} else {
			return "";
		}
	}
	
}
