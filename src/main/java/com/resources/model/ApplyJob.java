package com.resources.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class ApplyJob{
	@Id
	@SequenceGenerator(name="sm",initialValue=1)
	@GeneratedValue(generator="sm",strategy=GenerationType.SEQUENCE)
private int Ap_id;
	@Column(nullable=false)
private int Job_id;
	@Column(nullable=false)
private int Jp_id;
	@Column(nullable=false)
private int Js_id;
private String Ap_date;
	public String getAp_date() {
	return Ap_date;
}
public void setAp_date(String ap_date) {
	Ap_date = ap_date;
}
	public int getAp_id() {
		return Ap_id;
	}
	public void setAp_id(int ap_id) {
		Ap_id = ap_id;
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
