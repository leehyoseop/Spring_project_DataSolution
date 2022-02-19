package com.TTValue.main.place;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.TTValue.main.member.Member;

@Controller
public class PlaceController {	
	//필요 X -> LoginController
	
	//place를 db에 넣는 기능
	//	@RequestMapping(value = "/placefunc", method = RequestMethod.GET)
	//	public String placefunc(HttpServletRequest req, HttpSession session) {
	//		String category = req.getParameter("category");
	//		String place_name = req.getParameter("place_name");
	//		Object name = req.getSession().getAttribute("loginMember");
	//		
	//		
	//		System.out.println(category);
	//		System.out.println(place_name);
	//		System.out.println(name);
	//		//DB에 넣으면 됨
	//		
	//		return "Foodsearch";
	//	}
}
