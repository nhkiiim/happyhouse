package com.ssafy.happyhouse.dto;

public class HouseDeal {
	private int no;
	private String dong;
	private String aptName;
	private String code;
	private int dealAmount;
	private int buildYear;
	private int dealYear;
	private int dealMonth;
	private int dealDay;
	private double area;
	private int floor;
	private String jibun;
	private int type;
	private int rentMoney;
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
	public int getDealAmount() {
		return dealAmount;
	}
	public void setDealAmount(String dealAmount) {
		int real = Integer.parseInt(dealAmount.replaceAll(",", "").trim());
		this.dealAmount = real;
	}
	public int getBuildYear() {
		return buildYear;
	}
	public void setBuildYear(int buildYear) {
		this.buildYear = buildYear;
	}
	public int getDealYear() {
		return dealYear;
	}
	public void setDealYear(int dealYear) {
		this.dealYear = dealYear;
	}
	public int getDealMonth() {
		return dealMonth;
	}
	public void setDealMonth(int dealMonth) {
		this.dealMonth = dealMonth;
	}
	public int getDealDay() {
		return dealDay;
	}
	public void setDealDay(int dealDay) {
		this.dealDay = dealDay;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public String getJibun() {
		return jibun;
	}
	public void setJibun(String jibun) {
		this.jibun = jibun;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getRentMoney() {
		return rentMoney;
	}
	public void setRentMoney(int rentMoney) {
		this.rentMoney = rentMoney;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("[no=").append(no).append(", dong=").append(dong).append(", aptName=").append(aptName)
				.append(", code=").append(code).append(", dealAmount=").append(dealAmount).append(", buildYear=")
				.append(buildYear).append(", dealYear=").append(dealYear).append(", dealMonth=").append(dealMonth)
				.append(", dealDay=").append(dealDay).append(", area=").append(area).append(", floor=").append(floor)
				.append(", jibun=").append(jibun).append(", type=").append(type).append(", rentMoney=")
				.append(rentMoney).append("]");
		return builder.toString();
	}
	public HouseDeal(int no, String dong, String aptName, String code, String dealAmount, int buildYear, int dealYear,
			int dealMonth, int dealDay, double area, int floor, String jibun, int type, int rentMoney) {
		super();
		this.no = no;
		this.dong = dong;
		this.aptName = aptName;
		this.code = code;
		setDealAmount(dealAmount);
		this.buildYear = buildYear;
		this.dealYear = dealYear;
		this.dealMonth = dealMonth;
		this.dealDay = dealDay;
		this.area = area;
		this.floor = floor;
		this.jibun = jibun;
		this.type = type;
		this.rentMoney = rentMoney;
	}
	
	public HouseDeal() {}
}
