package com.ssafy.happyhouse.dto;

public class BaseAddress {
	private int no;
	private String city;
	private String code;
	private String dongcode;
	private String gugun;
	private String dong;
	private Double lat;
	private Double lng;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDongcode() {
		return dongcode;
	}
	public void setDongcode(String dongcode) {
		this.dongcode = dongcode;
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
	public Double getLat() {
		return lat;
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	public Double getLng() {
		return lng;
	}
	public void setLng(Double lng) {
		this.lng = lng;
	}
	
	public BaseAddress() {};
	
	public BaseAddress(int no, String city, String code, String dongcode, String gugun, String dong, Double lat,
			Double lng) {
		super();
		this.no = no;
		this.city = city;
		this.code = code;
		this.dongcode = dongcode;
		this.gugun = gugun;
		this.dong = dong;
		this.lat = lat;
		this.lng = lng;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BaseAddress [no=").append(no).append(", city=").append(city).append(", code=").append(code)
				.append(", dongcode=").append(dongcode).append(", gugun=").append(gugun).append(", dong=").append(dong)
				.append(", lat=").append(lat).append(", lng=").append(lng).append("]");
		return builder.toString();
	}
	
	
	
	
	
}
