package com.feedback.dto;

public class Feedback {
	
	 private int feed_id;
	
	 private String concept;
	 
	 private String interaction;
	
	 private String pace;
	
	 private String practical;
	
	 private String overall;
	
	 private String comments;
	
	 private String additional;
	
	 private int stud_id;
	 
	 private int sub_id;
	 
	 private String sub_name;

	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getConcept() {
		return concept;
	}

	public void setConcept(String concept) {
		this.concept = concept;
	}

	public String getInteraction() {
		return interaction;
	}

	public void setInteraction(String interaction) {
		this.interaction = interaction;
	}

	public String getPace() {
		return pace;
	}

	public void setPace(String pace) {
		this.pace = pace;
	}

	public String getPractical() {
		return practical;
	}

	public void setPractical(String practical) {
		this.practical = practical;
	}

	public String getOverall() {
		return overall;
	}

	public void setOverall(String overall) {
		this.overall = overall;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getAdditional() {
		return additional;
	}

	public void setAdditional(String additional) {
		this.additional = additional;
	}

	public int getStud_id() {
		return stud_id;
	}

	public void setStud_id(int stud_id) {
		this.stud_id = stud_id;
	}
	
	 

	public int getFeed_id() {
		return feed_id;
	}

	public void setFeed_id(int feed_id) {
		this.feed_id = feed_id;
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

	@Override
	public String toString() {
		return "Feedback [feed_id=" + feed_id + ", concept=" + concept + ", interaction=" + interaction + ", pace="
				+ pace + ", practical=" + practical + ", overall=" + overall + ", comments=" + comments
				+ ", additional=" + additional + ", stud_id=" + stud_id + ", sub_id=" + sub_id + ", sub_name="
				+ sub_name + "]";
	}
	 
	 

}
