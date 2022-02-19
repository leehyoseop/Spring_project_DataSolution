package com.TTValue.main.place;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TTValue.main.member.Member;

@Service
public class PlaceDAO {
	@Autowired 
	private SqlSession ss;
	
	public void placefunc(HttpServletRequest req, HttpSession session) {
		LocalDate now = LocalDate.now();
		
		String day = now.getDayOfWeek().toString();
		String category = req.getParameter("category");
		String place_name = req.getParameter("place_name");
		String lat = req.getParameter("lat");
		String lng = req.getParameter("lng");
		Object member = req.getSession().getAttribute("loginMember");
		Member m = (Member) member;
		
		Place p = new Place(m.getM_id(), day, category, place_name, lat, lng);
		
		ss.getMapper(PlaceMapper.class).placefunc(p);
		System.out.println("장소 넣기 성공");
	}
	//Test용
	public void getplace(HttpServletRequest req, HttpSession session) {
		Object member = req.getSession().getAttribute("loginMember");
		Member m = (Member) member;
		
		Place p = new Place(m.getM_id(), null, null, null, null, null);
		ArrayList<Place> ap =  (ArrayList<Place>) ss.getMapper(PlaceMapper.class).searchPlacefunc(p);
		req.setAttribute("place", ap);
	}
	//Json 파일 생성용
	public Places jsonPlace(HttpServletRequest req) {
		Object member = req.getSession().getAttribute("loginMember");
		Member m = (Member) member;
		
		Place p = new Place(m.getM_id(), null, null, null, null, null);
		List<Place> place = ss.getMapper(PlaceMapper.class).jsonPlacefunc(p);
		Places places = new Places(place);
		return places;
	}
}
