package com.TTValue.main.signup;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.TTValue.main.member.Member;

@Controller
public class SignupController {
	@Autowired
	private SignupDAO sDAO;
	// 회원가입페이지 이동
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(HttpServletRequest req) {
		return "signup";
	}
	// 회원가입
	@RequestMapping(value = "/signupfunc", method = RequestMethod.POST)
	public String signupfunc(Member m,HttpServletRequest req) {
		if(sDAO.signupfunc(m, req)) {
			return "mainpage";
		} else {
			return "signup";
		}
	}
}
