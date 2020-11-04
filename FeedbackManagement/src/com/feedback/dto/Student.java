package com.feedback.dto;

public class Student {
	
	private int stud_id;
	
	private String name;
	
	private String email;
	
	private String mobile;
	
	private String gender;
	
	private String address;
	
	private String password;
	
	private String DOB;

	

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}
	
	public int getStud_id() {
		return stud_id;
	}

	public void setStud_id(int stud_id) {
		this.stud_id = stud_id;
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

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Student [stud_id=" + stud_id + ", Name=" + name + ", email=" + email + ", mobile=" + mobile
				+ ", gender=" + gender + ", address=" + address + ", password=" + password + ", DOB=" + DOB + "]";
	}
	
	

}
