package com.ssafy.happyhouse.dto;

public class DongCode {
	private String dongCode;
	private String city;
	private String gugun;
	private String dong;
	public String getDongCode() {
		return dongCode;
	}
	public void setDongCode(String dongCode) {
		this.dongCode = dongCode;
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
	public DongCode(String dongCode, String city, String gugun, String dong) {
		setDongCode(dongCode);
		setCity(city);
		setGugun(gugun);
		setDong(dong);
	}
	
	public DongCode() {}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("[dongCode=").append(dongCode).append(", city=").append(city).append(", gugun=")
				.append(gugun).append(", dong=").append(dong).append("]");
		return builder.toString();
	}
	
	
	
}
