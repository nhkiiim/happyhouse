package com.ssafy.happyhouse.dto;

public class GugunCode {
	private String gugunCode;
	private String gugunName;
	
	public String getGugunCode() {
		return gugunCode;
	}
	public void setGugunCode(String gugunCode) {
		this.gugunCode = gugunCode;
	}
	public String getGugunName() {
		return gugunName;
	}
	public void setGugunName(String gugunName) {
		this.gugunName = gugunName;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("[gugunCode=").append(gugunCode).append(", gugunName=").append(gugunName).append("]");
		return builder.toString();
	}
	public GugunCode(String gugunCode, String gugunName) {
		super();
		this.gugunCode = gugunCode;
		this.gugunName = gugunName;
	}
	
	public GugunCode() {}
}
