package com.TTValue.main.signup;

import java.util.List;

import com.TTValue.main.member.Member;

public interface SignupMapper {
	
	public abstract int signupfunc(Member m);
	
	public abstract List<Member> signupcheck(); // selSt
}
