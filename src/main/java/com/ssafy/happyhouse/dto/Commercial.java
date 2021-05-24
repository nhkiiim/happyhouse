package com.ssafy.happyhouse.dto;

public class Commercial {
	private String name;
	private String code1;
	private String code2;
	private String code3;
	private String dong;
	private String lng;
	private String lat;
	
	public Commercial(String name, String code1, String code2, String code3, String dong, String lng, String lat) {
		super();
		this.name = name;
		this.code1 = code1;
		this.code2 = code2;
		this.code3 = code3;
		this.dong = dong;
		this.lng = lng;
		this.lat = lat;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode1() {
		return code1;
	}
	public void setCode1(String code1) {
		this.code1 = code1;
	}
	public String getCode2() {
		return code2;
	}
	public void setCode2(String code2) {
		this.code2 = code2;
	}
	public String getCode3() {
		return code3;
	}
	public void setCode3(String code3) {
		this.code3 = code3;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	
}
