package com.ssafy.happyhouse.dto;

public class User {
	private String id;
	private String pass;
	private String name;
	private String address;
	private String phone;
	
	public User() {
		this("","","","","");
	}
	
	public User(String id, String pass, String name, String address, String phone) {
		super();
		setId(id);
		setPass(pass);
		setName(name);
		setAddress(address);
		setPhone(phone);
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [id=").append(id).append(", pass=").append(pass).append(", name=").append(name)
				.append(", address=").append(address).append(", phone=").append(phone).append("]");
		return builder.toString();
	}
	
	
}
