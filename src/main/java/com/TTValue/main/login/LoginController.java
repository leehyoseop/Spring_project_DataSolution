package com.TTValue.main.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.TTValue.main.member.Member;
import com.TTValue.main.place.PlaceDAO;
import com.TTValue.main.place.Places;

@Controller
public class LoginController {

	@Autowired
	private LoginDAO lDAO;
	@Autowired
	private PlaceDAO pDAO;

	// 로그인기능
	@RequestMapping(value = "/loginfunc", method = RequestMethod.GET)
	public String loginfunc(HttpServletRequest req) {
		if (lDAO.loginfunc(req)) {
			// req.setAttribute(name, o);
			return "loginpage";
		} else {
			return "mainpage";
		}
		// lDAO.loginfunc(req);
		// return "loginpage";
	}

	// 로그아웃기능
	@RequestMapping(value = "/logoutfunc", method = RequestMethod.GET)
	public String logoutfunc(HttpServletRequest req, HttpSession session) {
		lDAO.logoutfunc(req);
		return "mainpage";
	}

	// DB에 장소 넣기 - 1. food
	@RequestMapping(value = "/foodplacefunc", method = RequestMethod.GET)
	public String foodplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Foodsearch";
	}

	// DB에 장소 넣기 - 2. hotel
	@RequestMapping(value = "/hotelplacefunc", method = RequestMethod.GET)
	public String hotelplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Hotelsearch";
	}

	// DB에 장소 넣기 - 3. cafe
	@RequestMapping(value = "/cafeplacefunc", method = RequestMethod.GET)
	public String cafeplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Cafesearch";
	}

	// DB에 장소 넣기 - 4. convsstore
	@RequestMapping(value = "/convstoreplacefunc", method = RequestMethod.GET)
	public String convstoreplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Convstoresearch";
	}

	// DB에 장소 넣기 - 5. bank
	@RequestMapping(value = "/bankplacefunc", method = RequestMethod.GET)
	public String bankplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Banksearch";
	}

	// DB에 장소 넣기 - 6. pharmacy
	@RequestMapping(value = "/pharmacyplacefunc", method = RequestMethod.GET)
	public String pharmacyplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Pharmacysearch";
	}

	// DB에 장소 넣기 - 7. subway
	@RequestMapping(value = "/subwayplacefunc", method = RequestMethod.GET)
	public String subwayplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.placefunc(req, session);
		// DB에 넣으면 됨
		return "Subwaysearch";
	}

	// DB에서 장소 불러오기 -> Test용
	@RequestMapping(value = "/getplace", method = RequestMethod.GET)
	public String getplacefunc(HttpServletRequest req, HttpSession session) {
		pDAO.getplace(req, session);
		return "Foodsearch";
	}

	// JSON파일 생성
	@RequestMapping(value = "/place.get", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Places PlaceGet(HttpServletRequest req, HttpServletResponse res) {
		// 이 사이트 외부에서 AJAX가 가능하게 (Cross-Domain AJAX) 하려면
		// 응답 파라미터를 추가하고
		res.addHeader("Access-Control-Allow-Origin", "*"); // json방식으로 AJAX를 할 때 반드시 필요하다!
		return pDAO.jsonPlace(req);
	}

	// Cluster
	@RequestMapping(value = "/Mypagesearch", method = RequestMethod.GET)
	public String getjsonfunc(HttpServletRequest req, HttpSession session) {
		return "mypage";
	}

	// Foodsearch의 홈버튼
	@RequestMapping(value = "/goHomepage", method = RequestMethod.GET)
	public String goHomepage(HttpServletRequest req) {
		return "loginpage";
	}
	
	// NotloginFoodsearch의 홈버튼
	@RequestMapping(value = "/goMainpage", method = RequestMethod.GET)
	public String goMainpage(HttpServletRequest req) {
		return "mainpage";
	}

}
