package com.ssafy.happyhouse.dto;

public class School {
	private int code;
	private String name;
	private String establishment;
	private String dong;
	private String address1;
	private String address2;
	private String url;
	private String coed;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEstablishment() {
		return establishment;
	}
	public void setEstablishment(String establishment) {
		this.establishment = establishment;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getCoed() {
		return coed;
	}
	public void setCoed(String coed) {
		this.coed = coed;
	}
	@Override
	public String toString() {
		return "School [code=" + code + ", name=" + name + ", establishment=" + establishment + ", dong=" + dong
				+ ", address1=" + address1 + ", address2=" + address2 + ", url=" + url + ", coed=" + coed + "]";
	}

	

	
	
}
