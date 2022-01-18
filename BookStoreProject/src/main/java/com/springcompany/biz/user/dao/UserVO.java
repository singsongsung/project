package com.springcompany.biz.user.dao;

public class UserVO {
	private String id;
	private String password;
	private String name;
	private String email;
	private String address;
	private String phoneNum;
	private int role;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		String value =  "UserVO[id="+id+",password="+password+", name="+name+", email="+email 
				+",address="+address+", phoneNum="+phoneNum+",  role="+role+"]";
		return value;
	}
}


