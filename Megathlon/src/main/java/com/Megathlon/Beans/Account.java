package com.Megathlon.Beans;


public class Account {
	
	private String name;
	private String email;
	private String password;
	private String role ;
	private int staffId;
	
	public Account() {
		this.name = "name";
		this.email ="email";
		this.password ="password";
		this.role = "11";
	}
	
	public int getStaffId() {
		return staffId;
	}

	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
