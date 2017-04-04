package com.resources.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
@Entity
public class Jobs{
	@Id
	@SequenceGenerator(name="jp_sq",initialValue=1)
	@GeneratedValue(generator="jp_sq",strategy=GenerationType.SEQUENCE)
	private int Job_id;
	@Column(nullable=false)
	private int Jp_id;
	private String Job_type,Job_skill;
	private int Job_year;
	private String Job_loc_country;
	private String Job_loc;
	private String Job_post_date;
	public String getJob_post_date() {
		return Job_post_date;
	}
	public void setJob_post_date(String job_post_date) {
		Job_post_date = job_post_date;
	}
	private String Job_last_date;
	private String Job_comp;
	@Column(nullable=false)
	private String Job_email;
	@Column(nullable=false)
	private String Job_phone;
	private String Job_address;
	private String Job_pin;
	private String Job_country;
	private String Job_city;
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
	public String getJob_type() {
		return Job_type;
	}
	public void setJob_type(String job_type) {
		Job_type = job_type;
	}
	public String getJob_skill() {
		return Job_skill;
	}
	public void setJob_skill(String job_skill) {
		Job_skill = job_skill;
	}
	public int getJob_year() {
		return Job_year;
	}
	public void setJob_year(int job_year) {
		Job_year = job_year;
	}
	public String getJob_loc_country() {
		return Job_loc_country;
	}
	public void setJob_loc_country(String job_loc_country) {
		Job_loc_country = job_loc_country;
	}
	public String getJob_loc() {
		return Job_loc;
	}
	public void setJob_loc(String job_loc) {
		Job_loc = job_loc;
	}
	public String getJob_last_date() {
		return Job_last_date;
	}
	public void setJob_last_date(String job_last_date) {
		Job_last_date = job_last_date;
	}
	public String getJob_comp() {
		return Job_comp;
	}
	public void setJob_comp(String job_comp) {
		Job_comp = job_comp;
	}
	public String getJob_email() {
		return Job_email;
	}
	public void setJob_email(String job_email) {
		Job_email = job_email;
	}
	public String getJob_phone() {
		return Job_phone;
	}
	public void setJob_phone(String job_phone) {
		Job_phone = job_phone;
	}
	public String getJob_address() {
		return Job_address;
	}
	public void setJob_address(String job_address) {
		Job_address = job_address;
	}
	public String getJob_pin() {
		return Job_pin;
	}
	public void setJob_pin(String job_pin) {
		Job_pin = job_pin;
	}
	public String getJob_country() {
		return Job_country;
	}
	public void setJob_country(String job_country) {
		Job_country = job_country;
	}
	public String getJob_city() {
		return Job_city;
	}
	public void setJob_city(String job_city) {
		Job_city = job_city;
	}
	private int Job_seat;
	public int getJob_seat() {
		return Job_seat;
	}
	public void setJob_seat(int job_seat) {
		Job_seat = job_seat;
	}
	
}
