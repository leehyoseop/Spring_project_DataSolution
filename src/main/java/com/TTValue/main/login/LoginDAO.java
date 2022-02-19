package com.TTValue.main.login;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTValue.main.member.Member;

@Service
public class LoginDAO {
	@Autowired
	private SqlSession ss;

	public boolean loginfunc(HttpServletRequest req) {	
		try {
			String id = req.getParameter("m_id");
			System.out.println(id);
			String pw = req.getParameter("m_pw");
			System.out.println(pw);
			ArrayList<Member> m = (ArrayList<Member>) ss.getMapper(LoginMapper.class).loginfunc();
			// 로그인처리
			for (Member member : m) {
				if (id.equals(member.getM_id()) && pw.equals(member.getM_pw())) {
					//req.setAttribute("result", "로그인성공");
					Member loginMember = new Member(member.getM_id(), member.getM_pw(), member.getM_name(), 
							member.getM_phone(), member.getM_birthday());
					//세션유지
					req.getSession().setAttribute("loginMember", loginMember);
					req.getSession().setMaxInactiveInterval(300);
					System.out.printf("%s 로그인성공\n",id);
					return true;
				} else {
					//req.setAttribute("result", "로그인실패");
					System.out.printf("%s 로그인실패\n",id);
					//return false;
				}
			}
			// req.setAttribute("result", ss.getMapper(LoginMapper.class).loginfunc());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public void logoutfunc(HttpServletRequest req) {
		req.getSession().setAttribute("loginMember", null);
		System.out.println("로그아웃!");
	}
}
