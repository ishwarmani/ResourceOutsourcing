package com.resources.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class JobProvider_selected{
	@Id
	@SequenceGenerator(name="sem",initialValue=1)
	@GeneratedValue(generator="sem",strategy=GenerationType.SEQUENCE)
private int Se_id;
	@Column(nullable=false)
private int Job_id;
	@Column(nullable=false)
private int Jp_id;
	@Column(nullable=false)
private int Js_id;
private String Se_date;
	
	
	public int getSe_id() {
	return Se_id;
}
public void setSe_id(int se_id) {
	Se_id = se_id;
}
public String getSe_date() {
	return Se_date;
}
public void setSe_date(String se_date) {
	Se_date = se_date;
}
	public int getJob_id() {
		return Job_id;
	}
	public void setJob_id(int job_id) {
		Job_id = job_id;
	}
	public int getJp_id() {
		return Jp_id;
	}
	public void setJp_id(int jp_id) {
		Jp_id = jp_id;
	}
	public int getJs_id() {
		return Js_id;
	}
	public void setJs_id(int js_id) {
		Js_id = js_id;
	}
}
