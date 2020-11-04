package com.feedback.dto;

public class Institute {
	
	 private int in_id;
	 
	 private String canteen;
	 
	 private String lib;
	 
	 private String rooms;
	 
	 private String lab;
	 
	 private String hostel;
	 
	 private String overall;
	 
	 private String com;
	 
	 private int stud_id;

	public Institute() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIn_id() {
		return in_id;
	}

	public void setIn_id(int in_id) {
		this.in_id = in_id;
	}

	public String getCanteen() {
		return canteen;
	}

	public void setCanteen(String canteen) {
		this.canteen = canteen;
	}

	public String getLib() {
		return lib;
	}

	public void setLib(String lib) {
		this.lib = lib;
	}

	public String getRooms() {
		return rooms;
	}

	public void setRooms(String rooms) {
		this.rooms = rooms;
	}

	public String getLab() {
		return lab;
	}

	public void setLab(String lab) {
		this.lab = lab;
	}

	public String getHostel() {
		return hostel;
	}

	public void setHostel(String hostel) {
		this.hostel = hostel;
	}

	public String getOverall() {
		return overall;
	}

	public void setOverall(String overall) {
		this.overall = overall;
	}

	public String getCom() {
		return com;
	}

	public void setCom(String com) {
		this.com = com;
	}
	
	 

	public int getStud_id() {
		return stud_id;
	}

	public void setStud_id(int stud_id) {
		this.stud_id = stud_id;
	}

	@Override
	public String toString() {
		return "Institute [in_id=" + in_id + ", canteen=" + canteen + ", lib=" + lib + ", rooms=" + rooms + ", lab="
				+ lab + ", hostel=" + hostel + ", overall=" + overall + ", com=" + com + ", stud_id=" + stud_id + "]";
	}
	 
	 
	 

}
