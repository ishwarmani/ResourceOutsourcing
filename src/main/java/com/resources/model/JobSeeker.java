package com.resources.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;

@Entity
public class JobSeeker {
	@Id
	@SequenceGenerator(name = "sq", initialValue = 1)
	@GeneratedValue(generator = "sq", strategy = GenerationType.SEQUENCE)
	private int Js_id;
	private String Js_name;
	@Column(nullable = false, unique = true)
	private String Js_email;
	@Column(nullable = false, unique = true)
	private String Js_phone;
	private String Js_address;
	private String Js_pin;
	private String Js_country;
	private String Js_city;
	@Column(nullable = false, unique = true)
	private String Js_uname;
	private String Js_pass;
	@Transient
	private String Js_repass;

	public int getJs_id() {
		return Js_id;
	}

	public void setJs_id(int js_id) {
		Js_id = js_id;
	}

	public String getJs_name() {
		return Js_name;
	}

	public void setJs_name(String js_name) {
		Js_name = js_name;
	}

	public String getJs_email() {
		return Js_email;
	}

	public void setJs_email(String js_email) {
		Js_email = js_email;
	}

	public String getJs_phone() {
		return Js_phone;
	}

	public void setJs_phone(String js_phone) {
		Js_phone = js_phone;
	}

	public String getJs_address() {
		return Js_address;
	}

	public void setJs_address(String js_address) {
		Js_address = js_address;
	}

	public String getJs_pin() {
		return Js_pin;
	}

	public void setJs_pin(String js_pin) {
		Js_pin = js_pin;
	}

	public String getJs_country() {
		return Js_country;
	}

	public void setJs_country(String js_country) {
		Js_country = js_country;
	}

	public String getJs_city() {
		return Js_city;
	}

	public void setJs_city(String js_city) {
		Js_city = js_city;
	}

	public String getJs_uname() {
		return Js_uname;
	}

	public void setJs_uname(String js_uname) {
		Js_uname = js_uname;
	}

	public String getJs_pass() {
		return Js_pass;
	}

	public void setJs_pass(String js_pass) {
		Js_pass = js_pass;
	}

	public String getJs_repass() {
		return Js_repass;
	}

	public void setJs_repass(String js_repass) {
		Js_repass = js_repass;
	}

}
