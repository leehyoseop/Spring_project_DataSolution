package com.TTValue.main.signup;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTValue.main.login.LoginMapper;
import com.TTValue.main.member.Member;

@Service
public class SignupDAO {
	@Autowired
	private SqlSession ss;
	public boolean signupfunc(Member m,HttpServletRequest req) {
		try {
			String id = req.getParameter("m_id");
			
//			String pw = req.getParameter("m_pw");
//			String name = req.getParameter("m_name");
//			String phone = req.getParameter("m_phone");
//			String birthday = req.getParameter("m_birthday");
			
			ArrayList<Member> mem = (ArrayList<Member>) ss.getMapper(SignupMapper.class).signupcheck();
			
			if(mem.isEmpty() == true) {
				ss.getMapper(SignupMapper.class).signupfunc(m);
				System.out.println("DB에 First Member 등록");
				return true;
			}
			else {
				for (Member member : mem) {
					if (id.equals(member.getM_id())) {
						//req.setAttribute("result", "로그인성공");
						System.out.println("회원가입 실패");
						return false;
					} /*else if(mem.isEmpty() == true){
						ss.getMapper(SignupMapper.class).signupfunc(m);
						System.out.println("테이블 비어있을때 회원가입 성공");
					}*/
					else {
						ss.getMapper(SignupMapper.class).signupfunc(m);
						System.out.println("회원가입 성공");
						return true;
					} 
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
		
	}
}
