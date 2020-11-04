package com.feedback.dto;

public class Faculty {
	
	 
	  private int faculty_id;
	  
	  private String name;
	  
	  private String email;
	  
	  private String gender;
	  
	  private String password;
	  
	  private String address;
	  
	  private String sub_name;

	public Faculty() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getFaculty_id() {
		return faculty_id;
	}

	public void setFaculty_id(int faculty_id) {
		this.faculty_id = faculty_id;
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

	 
	
	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	@Override
	public String toString() {
		return "Faculty [faculty_id=" + faculty_id + ", name=" + name + ", email=" + email + ", gender=" + gender
				+ ", password=" + password + ", address=" + address + ", sub_name=" + sub_name + "]";
	}
	  
	  
	  
	 

}
