package com.TTValue.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	// 홈페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		return "TTValue";
	}

	// 두둥
	@RequestMapping(value = "/gotoMain", method = RequestMethod.GET)
	public String gotoMain(HttpServletRequest req) {
		return "mainpage";
	}

	// 로그인페이지로 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest req) {
		return "login";
	}

	// 찜페이지로 이동
	@RequestMapping(value = "/heartpage", method = RequestMethod.GET)
	public String heartpage(HttpServletRequest req) {
		return "heartpage";
	}
	
	////////////////////////////////////////////////////////////////////
	//로그인 안!했을때
	////////////////////////////////////////////////////////////////////
	// 로그인 안했을시 - 1.food
	@RequestMapping(value = "/NotloginFood", method = RequestMethod.GET)
	public String notloginfood(HttpServletRequest req) {
		return "NotloginFood";
	}
	// 로그인 안했을시 - 2.hotel
	@RequestMapping(value = "/NotloginHotel", method = RequestMethod.GET)
	public String notloginhotel(HttpServletRequest req) {
		return "NotloginHotel";
	}
	// 로그인 안했을시 - 3.cafe
	@RequestMapping(value = "/NotloginCafe", method = RequestMethod.GET)
	public String notlogincafe(HttpServletRequest req) {
		return "NotloginCafe";
	}
	// 로그인 안했을시 - 4.bank
	@RequestMapping(value = "/NotloginBank", method = RequestMethod.GET)
	public String notloginbank(HttpServletRequest req) {
		return "NotloginBank";
	}
	// 로그인 안했을시 - 5.convstore
	@RequestMapping(value = "/NotloginConvstore", method = RequestMethod.GET)
	public String notloginconvstore(HttpServletRequest req) {
		return "NotloginConvstore";
	}
	// 로그인 안했을시 - 6.pharmacy
	@RequestMapping(value = "/NotloginPharmacy", method = RequestMethod.GET)
	public String notloginpharmacy(HttpServletRequest req) {
		return "NotloginPharmacy";
	}
	// 로그인 안했을시 - 7.subway
	@RequestMapping(value = "/NotloginSubway", method = RequestMethod.GET)
	public String notloginsubway(HttpServletRequest req) {
		return "NotloginSubway";
	}
	
	////////////////////////////////////////////////////////////////////
	//로그인 했을때
	////////////////////////////////////////////////////////////////////
	// 1.Food페이지로 이동
	@RequestMapping(value = "/Foodsearch", method = RequestMethod.GET)
	public String foodsearch(HttpServletRequest req) {
		return "Foodsearch";
	}

	// 2.Hotel페이지로 이동
	@RequestMapping(value = "/Hotelsearch", method = RequestMethod.GET)
	public String hotelsearch(HttpServletRequest req) {
		return "Hotelsearch";
	}

	// 3.Cafe페이지로 이동
	@RequestMapping(value = "/Cafesearch", method = RequestMethod.GET)
	public String cafesearch(HttpServletRequest req) {
		return "Cafesearch";
	}

	// 4.Convstore페이지로 이동
	@RequestMapping(value = "/Convstoresearch", method = RequestMethod.GET)
	public String convstoresearch(HttpServletRequest req) {
		return "Convstoresearch";
	}

	// 5.Bank페이지로 이동
	@RequestMapping(value = "/Banksearch", method = RequestMethod.GET)
	public String banksearch(HttpServletRequest req) {
		return "Banksearch";
	}

	// 6.Pharmacy페이지로 이동
	@RequestMapping(value = "/Pharmacysearch", method = RequestMethod.GET)
	public String pharmacysearch(HttpServletRequest req) {
		return "Pharmacysearch";
	}

	// 7.Subway페이지로 이동
	@RequestMapping(value = "/Subwaysearch", method = RequestMethod.GET)
	public String subwaysearch(HttpServletRequest req) {
		return "Subwaysearch";
	}

	// 회원가입페이지로 이동
	//	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	//	public String signup(HttpServletRequest req) {
	//		return "signupMember";
	//	}

}
