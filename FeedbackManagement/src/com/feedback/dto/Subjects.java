package com.feedback.dto;

public class Subjects {
	
	 private int sub_id;
	 
	 private String sub_name;
	 
	 private String fac_name;

	public Subjects() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getSub_id() {
		return sub_id;
	}

	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public String getFac_name() {
		return fac_name;
	}

	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}

	@Override
	public String toString() {
		return "Subjects [sub_id=" + sub_id + ", sub_name=" + sub_name + ", fac_name=" + fac_name + "]";
	}
	 
	 

}
