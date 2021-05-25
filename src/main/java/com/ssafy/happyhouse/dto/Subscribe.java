package com.ssafy.happyhouse.dto;

public class Subscribe {
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Subscribe [email=").append(email).append("]");
		return builder.toString();
	}
	
	
	
	
}
