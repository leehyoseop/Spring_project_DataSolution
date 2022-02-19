package com.TTValue.main.place;

public class Place {
	String id;
	String day;
	String category;
	String place_name;
	String lat;
	String lng;
	
	public Place() {
		// TODO Auto-generated constructor stub
	}

	public Place(String id, String day, String category, String place_name, String lat, String lng) {
		super();
		this.id = id;
		this.day = day;
		this.category = category;
		this.place_name = place_name;
		this.lat = lat;
		this.lng = lng;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}
	
}
