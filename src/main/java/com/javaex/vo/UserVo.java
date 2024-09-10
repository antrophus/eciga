package com.javaex.vo;

public class UserVo {
	
	
	private int uNo;
	private String uId;
	private String name;
	private String password;
	private String ph;
	private String address;
	private String birth;
	private int role;
	
	
	
	
	
	public UserVo() {
		super();
	}
	public UserVo(int uNo, String uId, String name, String password, String ph, String address, String birth,
			int role) {
		super();
		this.uNo = uNo;
		this.uId = uId;
		this.name = name;
		this.password = password;
		this.ph = ph;
		this.address = address;
		this.birth = birth;
		this.role = role;
	}
	
	
	
	
	
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	
	
	
	@Override
	public String toString() {
		return "UserVo [uNo=" + uNo + ", uId=" + uId + ", name=" + name + ", password=" + password + ", ph=" + ph
				+ ", address=" + address + ", birth=" + birth + ", role=" + role + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
