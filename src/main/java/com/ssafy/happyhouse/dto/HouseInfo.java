package com.ssafy.happyhouse.dto;

public class HouseInfo {
	private int no;
	private String dong;
	private String aptName;
	private String code;
	private int buildYear;
	private String jibun;
	private Double lat;
	private Double lng;
	private String img;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getAptName() {
		return aptName;
	}
	public void setAptName(String aptName) {
		this.aptName = aptName;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getBuildYear() {
		return buildYear;
	}
	public void setBuildYear(int buildYear) {
		this.buildYear = buildYear;
	}
	public String getJibun() {
		return jibun;
	}
	public void setJibun(String jibun) {
		this.jibun = jibun;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("[no=").append(no).append(", dong=").append(dong).append(", aptName=").append(aptName)
				.append(", code=").append(code).append(", buildYear=").append(buildYear).append(", jibun=")
				.append(jibun).append(", lat=").append(lat).append(", lng=").append(lng).append(", img=").append(img)
				.append("]");
		return builder.toString();
	}
	public HouseInfo(int no, String dong, String aptName, String code, int buildYear, String jibun, Double lat,
			Double lng, String img) {
		super();
		this.no = no;
		this.dong = dong;
		this.aptName = aptName;
		this.code = code;
		this.buildYear = buildYear;
		this.jibun = jibun;
		this.lat = lat;
		this.lng = lng;
		this.img = img;
	}
	
	public HouseInfo() {}
}
