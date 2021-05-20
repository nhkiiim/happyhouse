package com.ssafy.happyhouse.dto;

public class Interest {
	private String id;
	private String city;
	private String gugun;
	private String dong;

	public Interest(String id, String city, String gugun, String dong) {
		super();
		setId(id);
		setCity(city);
		setGugun(gugun);
		setDong(dong);
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}	
	
	
}
