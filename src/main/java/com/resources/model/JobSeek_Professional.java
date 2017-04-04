package com.resources.model;

import java.io.File;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;


@Entity
public class JobSeek_Professional {
	@Id
	@SequenceGenerator(name = "sq", initialValue = 1)
	@GeneratedValue(generator = "sq", strategy = GenerationType.SEQUENCE)
	private int Js_pro_id;

	@Column(unique = true, nullable = false)
	private int Js_id;

	private String Js_job;
	private int Js_exp_year;
	private int Js_exp_month;
	private String Js_loc;
	@Transient
	private File upload;
	private String fileName;

	public int getJs_pro_id() {
		return Js_pro_id;
	}

	public void setJs_pro_id(int js_pro_id) {
		Js_pro_id = js_pro_id;
	}

	public int getJs_id() {
		return Js_id;
	}

	public void setJs_id(int js_id) {
		Js_id = js_id;
	}

	public String getJs_job() {
		return Js_job;
	}

	public void setJs_job(String js_job) {
		Js_job = js_job;
	}

	public int getJs_exp_year() {
		return Js_exp_year;
	}

	public void setJs_exp_year(int js_exp_year) {
		Js_exp_year = js_exp_year;
	}

	public int getJs_exp_month() {
		return Js_exp_month;
	}

	public void setJs_exp_month(int js_exp_month) {
		Js_exp_month = js_exp_month;
	}

	public String getJs_loc() {
		return Js_loc;
	}

	public void setJs_loc(String js_loc) {
		Js_loc = js_loc;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return fileName;
	}

	public void setUploadFileName(String fileName) {
		this.fileName = fileName;
	}

}
